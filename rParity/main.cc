#include "stdio.h"

// Math
#include "math.h"

// File operations
#include <iostream>
#include <fstream>

// Pythia
#include "Pythia.h"

/*
|eta| < 2.1
pT > 8 GeV/c

Decay Lengths <= 100E-6 m (100E-3 mm)
All candidate events originated on primary vertex

Before e-mu trigger:
  One electron with pT > 10 GeV/c
  One muon with pT > 20 GeV/c
Before mu-mu trigger:
  One muon with pT > 15 GeV/c
  One muon with pT > 10 GeV/c
Before e-e trigger:
  One muon with pT > 20 GeV/c
  One muon with pT > 10 GeV/c

Track Isolation:
  I_{rel} < 0.15
 */

using namespace Pythia8;

double deltaR(double p1eta, double p1phi, double p2eta, double p2phi){
  return sqrt( pow(p1phi-p2phi,2) + pow(p1eta-p2eta,2) );
}

bool isIsolated( Event &event, vector<int> index, double R ){
 
  double I_rel;

  for ( int i = 0; i < index.size(); i++){

    I_rel = 0;
    
    for ( int j = 0; j < event.size(); ++j ){
      
      if ( j == index[i] ) continue; // Avoid analysis over the same index
      if ( !(event[j].isFinal()) ) continue; // Only stable particles
      if ( event[j].pT() < 8.0 ) continue; // pT >= 8 GeV/c
      if ( abs( event[j].eta() ) >= 2.1 ) continue; // |eta| < 2.1
      
      if ( deltaR( event[j].eta(), event[j].phi(), event[i].eta(), event[i].eta() ) < R ) I_rel += ( event[j].pT() + event[j].eT() ) / event[i].pT();

    }
    if ( I_rel > 0.15 ) return false;
  }
  return true;
}

bool ZVeto( Event &event, vector<int> iMu, vector<int> iMup, vector<int> iE, vector<int> iEp, float minMass, float maxMass ){

  for ( int i = 0; i < iMu.size(); i++ ){
    for ( int j = 0; j < iMup.size(); j++ ){
      if ( m(event[iMu[i]], event[iMup[j]]) > minMass && m(event[iMu[i]], event[iMup[j]]) < maxMass ) return true;
      }
  }
  for ( int i = 0; i < iE.size(); i++ ){
    for ( int j = 0; j < iEp.size(); j++ ){
      if ( m(event[iE[i]], event[iEp[j]]) > minMass && m(event[iE[i]], event[iEp[j]]) < maxMass ) return true;
      }
  }

}

int main(int argc, char * argv[])
{

  // Define Variables
  ofstream file;
  ofstream file1;
  file.open("muon.data");
  file1.open("electron.data");

  vector<int> iMu; // Muon event storage
  vector<int> iE;  // Electron event storage
  vector<int> iMup; // Antimuon event storage
  vector<int> iEp;  // Antielectron event storage
  int pTelectrons[3];  // Count electrons with [0]: pT > 10 [1]: pT > 20 [2]: pT > 70
  int pTmuons[3];  // Count muons with [0]: pT > 10 [1]: pT > 15 [2]: pT > 20
  
  Vec4 MET;

  // Handful Histograms
  Hist pTe("electron pT dist.", 100, 0, 300);
  Hist pTmu("muon pT dist.", 100, 0, 300);
  Hist pTt("total pT dist.", 100, 0, 300);
 
  // Set up generation
  Pythia pythia; // Declare pythia object
  pythia.readFile("main0.cmnd"); // Read file of parameters
  pythia.init(); // Initialize with .cmnd file parameters

  // Pythia Settings
  int nEvents;
  if ( argc > 1 ) 
    nEvents = atoi(argv[1]);
  else 
    nEvents = pythia.mode("Main:numberOfEvents");
  int nList = pythia.mode("Main:numberToList");
  int nShow = pythia.mode("Main:timesToShow");
  
  for ( int iEvent = 0; iEvent < nEvents; iEvent++ ) { // Event loop
    
    iE.clear();
    iMu.clear(); 
    iEp.clear();
    iMup.clear(); 
    pTelectrons[0] = 0; pTelectrons[1] = 0; pTelectrons[2] = 0; 
    pTmuons[0] = 0; pTmuons[1] = 0; pTmuons[2] = 0;

    if ( !pythia.next() ) continue;
    // if ( iEvent < nList ){ // Event listing
    //   pythia.process.list(); 
    //   pythia.event.list();
    // }
    pythia.process.list();

    // int percent = static_cast<float>(iEvent)/static_cast<float>(nEvents)*100.0;
    // int nPace = max(1, nEvents / max(1, nShow) ); // 
    // if (nShow > 0 && iEvent%nPace == 0) printf(" Genarating Event %u of %u\t %u %% completed\n",iEvent,nEvents,percent);
    
    for ( int i = 0; i < pythia.event.size(); ++i ){ // Particle loop

      if ( pythia.event[i].id() == -13 ) {iMup.push_back(i); continue;} // Tag antimuons
      if ( pythia.event[i].id() == -11 ) {iEp.push_back(i); continue;} // Tag positrons
      if ( pythia.event[i].id() == 13 ) {iMu.push_back(i); continue;} // Tag muons
      if ( pythia.event[i].id() == 11 ) {iE.push_back(i); continue;} // Tag electrons

      if ( pythia.event[i].pT() < 8.0 ) continue; // pT >= 8 GeV/c
      if ( abs( pythia.event[i].eta() ) >= 2.1 ) continue; // |eta| < 2.1
      if ( !(pythia.event[i].isFinal()) ) continue; // Only final particles i.e. status >= 0
      if ( pythia.event[i].hasVertex() ) continue; // Particles originated at the primary vertex (origin) only
      // if ( sqrt( pow(pythia.event[i].xProd(),2)+pow(pythia.event[i].yProd(),2)+pow(pythia.event[i].zProd(),2) ) > 100E-3 ) continue; // Decay lengths <= 100E-3 mm

      // MET
      if ( pythia.event[i].id() == 12 || pythia.event[i].id() == 14 || pythia.event[i].id() == 16 ){MET+=pythia.event[i].p(); continue;} // Neutrinos   
      if ( pythia.event[i].id() == 1000039 ){MET+=pythia.event[i].p(); continue;} // Gravitinos
      
      // Tag electron momentum for triggers
      if ( pythia.event[i].id() == 11 ){
	if ( pythia.event[i].pT() > 70 ){ pTelectrons[2] += 1; continue; }
	if ( pythia.event[i].pT() > 20 ){ pTelectrons[1] += 1; continue; }
	if ( pythia.event[i].pT() > 10 ){ pTelectrons[0] += 1; continue; }
      }
      
      // Tag muons momentum for triggers
      if ( pythia.event[i].id() == 13 ){
	if ( pythia.event[i].pT() > 20 ){ pTmuons[2] += 1; continue; }
	if ( pythia.event[i].pT() > 15 ){ pTmuons[1] += 1; continue; }
	if ( pythia.event[i].pT() > 10 ){ pTmuons[0] += 1; continue; }
      }

    }

    /* Z-veto */
    if ( ZVeto(pythia.event,iMu, iMup, iE, iEp, 75., 105.) ) continue; // Check for OSSF leptons with invariante mass in [75,105] GeV/c

    cout << iMu.size() << " " << iE.size()<< endl;
    /* === mu-mu trigger === */
    if ( iMu.size() > 1 ) {
     
      cout << "mu-mu" << endl; getchar();
      if ( pTmuons[1] < 1 ) continue; // at least one mu with pT > 15 GeV/c
      if ( pTmuons[0] < 1 ) continue; // at least one mu with pT > 10 GeV/c
      if ( !( isIsolated( pythia.event, iMu, 0.3 ) ) ) continue; // Check isolation of tagged muons (R<0.3)

      for ( int i = 0; i < iMu.size(); i++ ) {pTmu.fill(pythia.event[iMu[i]].pT()); file << pythia.event[iMu[i]].pT() << endl;}
    }

    /* === e-e trigger === */
    if ( iE.size() > 1 ) {
      
      cout << "e-e" << endl; getchar();    
      if ( pTelectrons[1] < 1 ) continue; // at least one mu with pT > 20 GeV/c
      if ( pTelectrons[0] < 1 ) continue; // at least one mu with pT > 10 GeV/c
      if ( !( isIsolated( pythia.event, iMu, 0.3 ) ) ) continue; // Check isolation of tagged muons (R<0.3) 

      for ( int i = 0; i < iE.size(); i++ ) {pTe.fill(pythia.event[iE[i]].pT()); file1 << pythia.event[iE[i]].pT() << endl;}
    }

    /* === e-mu trigger === */
    if ( iE.size() > 0 && iMu.size() > 0 ) {

      cout << "e-mu" << endl; getchar();
      if ( pTmuons[2] > 0 ) continue; // at least one mu with pT > 20 GeV/c
      if ( pTelectrons[0] > 0 ) continue; // at least one e with pT > 10 GeV/c
      if ( !( isIsolated( pythia.event, iE, 0.4 ) ) ) continue; // Check isolation of tagged electrons (R<0.4)
      if ( !( isIsolated( pythia.event, iMu, 0.3 ) ) ) continue; // Check isolation of tagged muons (R<0.3)
      
      for ( int i = 0; i < iMu.size(); i++ ) {pTmu.fill(pythia.event[iMu[i]].pT()); file << pythia.event[iMu[i]].pT() << endl;}
      for ( int i = 0; i < iE.size(); i++ ) {pTe.fill(pythia.event[iE[i]].pT()); file1 << pythia.event[iE[i]].pT() << endl;}
    }

    /* === single lepton trigger === */
    if ( iE.size() == 1 && iMu.size() == 0 ){ // Single electron
      if ( pTelectrons[2] < 1 ) continue;
      cout << "single e" << endl; getchar();
    }
    if ( iMu.size() == 1 && iE.size() == 0 ){ // Single muon
      if ( pTelectrons[2] < 1 ) continue;
      cout << "single mu" << endl; getchar();
    }
    

  } // End event loop

  file.close();
  file1.close();
  
  pTt += pTmu;
  pTt += pTe;
  cout << pTe << endl << pTmu << pTt << endl;

  return 0; // End main program with error-free return
  
}
