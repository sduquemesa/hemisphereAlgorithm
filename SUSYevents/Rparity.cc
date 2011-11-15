#include "stdio.h"
#include "math.h"

// Pythia
#include "Pythia.h"

// ROOT
#include "TH1.h" // Histogramming
#include "TVirtualPad.h" // Interactive graphics
#include "TApplication.h" // Interactive graphics
#include "TFile.h" // Saving a file
#include "TMath.h" // Math

/*

==== CUTS ====

|eta| < 2.1
pT > 8 GeV/c

Before e-mu trigger:
  One electron with pT > 10 GeV/c
  One muon with pT > 20 GeV/c
Before mu-mu trigger:
  One muon with pT > 15 GeV/c
  One muon with pT > 10 GeV/c
Before e-e trigger:
  One muon with pT > 20 GeV/c
  One muon with pT > 10 GeV/c

 */

using namespace Pythia8;

double deltaR(double p1eta, double p1phi, double p2eta, double p2phi){
  return sqrt( pow(p1phi-p2phi,2) + pow(p1eta-p2eta,2) );
}

int main(int argc, char * argv[])
{
  // Settings
  int nEvents = 100000;
  vector<int> iMu; // Muon event storage
  vector<int> iE;  // Electron event storage
  double I0_rel;
  double I1_rel;
 
  // Set up generation
  Pythia pythia; // Declare pythia object
  pythia.readFile("main0.cmnd"); // Read file of parameters
  pythia.init(); // Initialize with .cmnd file parameters

  // Create the ROOT application environment. 
  TApplication theApp("hist", &argc, argv);

  // Set up root Histograms
  TH1D *he = new TH1D("he","e pT distribution",100,0,100);
  TH1D *hmu = new TH1D("hmu","mu pT distribution",100,0,100);
  
  for ( int iEvent = 0; iEvent < nEvents; iEvent++ ) { // Event loop
    
    iE.clear();
    iMu.clear();
    I0_rel = 0;
    I1_rel = 0;

    if (!pythia.next()) continue;
    if ( iEvent == 0 ) pythia.event.list();  // Print event
    // pythia.event.list();
    
    for ( int i = 0; i < pythia.event.size(); ++i ){ // Particle loop
      
      if ( pythia.event[i].pT() < 8.0 ) continue; // Cut: pT >= 8 GeV/c
      if ( TMath::Abs( pythia.event[i].eta() ) >= 2.1 ) continue; // Cut: |eta| < 2.1
      
      if ( pythia.event[i].id() == 11 ) { 
	if ( pythia.event[pythia.event[i].mother1()].idAbs() == 24 ) continue; // Avoid electron from W decay
	if ( pythia.event[i].hasVertex() ) continue; // Cut: Particles originated on primary vertex only
	iE.push_back(i);
      }
      if ( pythia.event[i].id() == 13 ){
	if ( pythia.event[i].hasVertex() ) continue; // Cut: Particles originated at primary vertex only
	iMu.push_back(i);
      }
      
    }


    if ( iE.size() == 1 && iMu.size() == 1 ) { // e-mu trigger
      if ( pythia.event[iMu[0]].pT() < 20 ) continue; // mu pT > 20 GeV/c
      if ( pythia.event[iE[0]].pT() < 10 ) continue; // e pT > 10 GeV/c
      if ( deltaR(pythia.event[iMu[0]].eta(),pythia.event[iMu[0]].phi(),pythia.event[iE[1]].eta(), \
		  pythia.event[iE[1]].phi()) < 0.1 ) continue; // Candidate events separation deltaR < 0.1
      // cout << "e-mu event selected" << endl;
      for ( int i = 0; i < pythia.event.size(); ++i ){ // Check isolation of a candidate event
	if ( i == iMu[0] || i == iE[0] ) continue;
	if ( !(pythia.event[i].isFinal()) ) continue;
	if ( deltaR(pythia.event[iMu[0]].eta(),pythia.event[iMu[0]].phi(),pythia.event[i].eta(), \
		    pythia.event[i].phi()) < 0.3 ) { I0_rel += (pythia.event[i].pT() + pythia.event[i].eT()) / pythia.event[iMu[0]].pT(); } // mu I_rel calculation
	if ( deltaR(pythia.event[iE[0]].eta(),pythia.event[iE[0]].phi(),pythia.event[i].eta(), \
		    pythia.event[i].phi()) < 0.4 ) { I1_rel += (pythia.event[i].pT() + pythia.event[i].eT()) / pythia.event[iE[0]].pT(); } // e I_rel calculation
      }
      if ( I0_rel > 0.15 || I1_rel > 0.15 ) continue;

      he->Fill(pythia.event[iE[0]].pT());
      hmu->Fill(pythia.event[iMu[0]].pT());
    }
    

    if ( iMu.size() == 2 ) { // mu-mu trigger
      // One mu with pT > 10 GeV/c and another mu with pT > 15 GeV/c
      if ( !( pythia.event[iMu[0]].pT() > 10 && pythia.event[iMu[1]].pT() > 10 ) ) continue;
      if ( !( pythia.event[iMu[0]].pT() > 15 || pythia.event[iMu[1]].pT() > 15 ) ) continue;
      if ( deltaR(pythia.event[iMu[0]].eta(),pythia.event[iMu[0]].phi(),pythia.event[iMu[1]].eta(), \
		    pythia.event[iMu[1]].phi()) < 0.1 ) continue; // Candidate events separation
      // cout << "mu-mu event selected" << endl;
      for ( int i = 0; i < pythia.event.size(); ++i ){ // Check isolation of a candidate event
	if ( i == iMu[0] || i == iMu[1] ) continue;
	if ( !(pythia.event[i].isFinal()) ) continue;
	if ( deltaR(pythia.event[iMu[0]].eta(),pythia.event[iMu[0]].phi(),pythia.event[i].eta(), \
		    pythia.event[i].phi()) < 0.3 ) { I0_rel += (pythia.event[i].pT() + pythia.event[i].eT()) / pythia.event[iMu[0]].pT(); } // mu I_rel calculation
	if ( deltaR(pythia.event[iMu[1]].eta(),pythia.event[iMu[1]].phi(),pythia.event[i].eta(), \
		    pythia.event[i].phi()) < 0.3 ) { I1_rel += (pythia.event[i].pT() + pythia.event[i].eT()) / pythia.event[iMu[1]].pT(); } // e I_rel calculation
      }
      if ( I0_rel > 0.15 || I1_rel > 0.15 ) continue;

      hmu->Fill(pythia.event[iMu[0]].pT());
      hmu->Fill(pythia.event[iMu[1]].pT());
    }
    
    if ( iE.size() == 2 ) { // e-e trigger
      // One e with pT > 10 GeV/c and another mu with pT > 20 GeV/c
      if ( !( pythia.event[iE[0]].pT() > 10 && pythia.event[iE[1]].pT() > 10 ) ) continue;
      if ( !( pythia.event[iE[0]].pT() > 15 || pythia.event[iE[1]].pT() > 20 ) ) continue;
      if ( deltaR(pythia.event[iE[0]].eta(),pythia.event[iE[0]].phi(),pythia.event[iE[1]].eta(), \
		  pythia.event[iE[1]].phi()) < 0.1 ) continue; // Candidate events separation
      //cout << "e-e event selected" << endl;
      for ( int i = 0; i < pythia.event.size(); ++i ){ // Check isolation of a candidate event
	if ( i == iE[0] || i == iE[1] ) continue;
	if ( !(pythia.event[i].isFinal()) ) continue;
	if ( deltaR(pythia.event[iE[0]].eta(),pythia.event[iE[0]].phi(),pythia.event[i].eta(), \
		    pythia.event[i].phi()) < 0.4 ) { I0_rel += (pythia.event[i].pT() + pythia.event[i].eT()) / pythia.event[iE[0]].pT(); } // mu I_rel calculation
	if ( deltaR(pythia.event[iE[1]].eta(),pythia.event[iE[1]].phi(),pythia.event[i].eta(), \
		    pythia.event[i].phi()) < 0.4 ) { I1_rel += (pythia.event[i].pT() + pythia.event[i].eT()) / pythia.event[iE[1]].pT(); } // e I_rel calculation
      }
      if ( I0_rel > 0.15 || I1_rel > 0.15 ) continue;
      he->Fill(pythia.event[iE[0]].pT());
      he->Fill(pythia.event[iE[1]].pT());
    }
    
  } // End event loop

  he->Draw();
  gPad->WaitPrimitive();
  hmu->Draw();
  gPad->WaitPrimitive();
  
  return 0; // End main program with error-free return
  
}
