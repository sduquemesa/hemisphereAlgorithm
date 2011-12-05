// Stdlib
#include <iostream>

// Pythia
#include "Pythia.h" 

// FastJet
#include "fastjet/PseudoJet.hh"
#include "fastjet/ClusterSequence.hh"
#include "fastjet/Selector.hh"

// ROOT
#include "TH2.h" // Histogramming
#include "TVirtualPad.h" // Interactive graphics
#include "TApplication.h" // Interactive graphics
#include "TFile.h" // Saving a file
#include "TMath.h" // Math
#include "THStack.h"

using namespace Pythia8;

double theta(double eta){
  return 2*TMath::ATan( TMath::Exp(-1*eta) ) * 180/TMath::Pi();
}

double etaCalc(double theta){
  return ( -TMath::Log( TMath::Tan( theta/2.0 ) ) );
}

int main(int argc, char* argv[])
{
  // Settings
  int nEvents = 1000;
  Vec4 MET; // Missing ET 4-vector

  // Set up generation
  Pythia pythia; // Declare pythia object
  pythia.readFile("main0.cmnd"); // Read file of parameters
  pythia.init(); // Initialize with .cmnd file parameters

  // Fastjet analysis - select algorithm and parameters
  double Rparam = 0.5;
  fastjet::Strategy               strategy = fastjet::Best;
  fastjet::RecombinationScheme    recombScheme = fastjet::E_scheme;
  fastjet::JetDefinition          *jetDef = NULL;
  jetDef = new fastjet::JetDefinition(fastjet::kt_algorithm, Rparam,
                                      recombScheme, strategy);

  // Fastjet input
  std::vector <fastjet::PseudoJet> fjInputs;


  for ( int iEvent = 0; iEvent < nEvents; iEvent++ ) { // Event loop

    if (!pythia.next()) continue;
    // if (iEvent == 0) pythia.event.list();  // Print first event
    pythia.process.list();
    getchar();

    fjInputs.resize(0); // Reset Fastjet input
    
    for ( int i = 0; i < pythia.event.size(); i++ ){ // Particle loop

      if ( !pythia.event[i].isFinal() ) continue;      // Final state particles

      // No neutrinos
      if (pythia.event[i].idAbs() == 12 || pythia.event[i].idAbs() == 14 || pythia.event[i].idAbs() == 16) { MET += pythia.event[i].p(); continue; }

      // No neutralinos
      if (pythia.event[i].idAbs() == 1000012 || pythia.event[i].idAbs() == 1000014 || pythia.event[i].idAbs() == 1000016) { MET += pythia.event[i].p(); continue; }

      // No gravitinos
      if ( pythia.event[i].id() == 1000039 ){ MET+=pythia.event[i].p(); continue; }

      // Store as input to Fastjet
      fjInputs.push_back( fastjet::PseudoJet (pythia.event[i].px(), pythia.event[i].py(), pythia.event[i].pz(), pythia.event[i].e() ) );
    
    } // End particle loop

    // Run Fastjet algorithm 
    vector <fastjet::PseudoJet> jets;
    fastjet::ClusterSequence clustSeq(fjInputs, *jetDef); // Run clustering
   
    // For the first event, print the FastJet details
    if (iEvent == 0) {
      cout << "\nRan " << jetDef->description() << endl << endl;
      cout << "Strategy adopted by FastJet was " << clustSeq.strategy_string() << endl << endl;
    }

    // Extract jets
    jets = clustSeq.inclusive_jets();
  
    // Apply cuts
    fastjet::Selector select_ET = fastjet::SelectorEtMin(30.0);
    fastjet::Selector select_eta = fastjet::SelectorEtaMax(3);
    jets = select_ET(jets);
    jets = select_eta(jets);
    jets = sorted_by_E(jets);
   
    for (int i=0; i<jets.size();i++) cout << jets[i].perp() << endl;

    cout << jets.size() << endl;
 
  } // End event loop
  
  return 0; // End main program with error-free return
}
