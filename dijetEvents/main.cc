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
  return 2*TMath::ATan( TMath::Exp(-1*eta) );
}

double etaCalc(double theta){
  return ( -TMath::Log( TMath::Tan( theta/2.0 ) ) );
}

int main(int argc, char* argv[])
{
  // Settings
  int nEvents = 10000;

  // Set up generation
  Pythia pythia; // Declare pythia object
  pythia.readFile("main0.cmnd"); // Read file of parameters
  pythia.init(); // Initialize with .cmnd file parameters

  // Create the ROOT application environment. 
  TApplication theApp("hist", &argc, argv);

  // Create file on which histogram(s) can be saved.
  //TFile* outFile = new TFile("lego.root", "RECREATE");

  // Book histogram.
  THStack *hs = new THStack("hs","");
  TH2F *lego = new TH2F("lego","lego plot of dijet event", 50, -3.141593, 3.141593, 50, -3.141593, 3.141593);
  TH2F *mET = new TH2F("mET","missing ET", 50, -3.141593, 3.141593, 50, -3.141593, 3.141593);

  // Fastjet analysis - select algorithm and parameters
  double Rparam = 0.5;
  fastjet::Strategy               strategy = fastjet::Best;
  fastjet::RecombinationScheme    recombScheme = fastjet::E_scheme;
  fastjet::JetDefinition         *jetDef = NULL;
  jetDef = new fastjet::JetDefinition(fastjet::kt_algorithm, Rparam,
                                      recombScheme, strategy);

  // Fastjet input
  std::vector <fastjet::PseudoJet> fjInputs;


  for ( int iEvent = 0; iEvent < nEvents; iEvent++ ) { // Event loop
    if (!pythia.next()) continue;
    if (iEvent == 0) pythia.event.list();  // Print first event

    // Reset Fastjet input
    fjInputs.resize(0);

    // Reset Histogram input
    lego->Reset();
    mET->Reset();

    // Keep track of missing ET
    Vec4 MET;

   for ( int i = 0; i < pythia.event.size(); i++ ){ // Particle loop

     if (!pythia.event[i].isFinal()) continue;      // Final state particles

     // No neutrinos
     if (pythia.event[i].idAbs() == 12 || pythia.event[i].idAbs() == 14 || pythia.event[i].idAbs() == 16) {MET += pythia.event[i].p(); continue;}

     // No neutralinos
     if (pythia.event[i].idAbs() == 1000012 || pythia.event[i].idAbs() == 1000014 || pythia.event[i].idAbs() == 1000016) {MET += pythia.event[i].p(); continue;}

     // No gravitinos
     if ( pythia.event[i].id() == 1000039 ){MET+=pythia.event[i].p(); continue;}

      // Store as input to Fastjet
      fjInputs.push_back( fastjet::PseudoJet (pythia.event[i].px(), pythia.event[i].py(), pythia.event[i].pz(), pythia.event[i].e() ) );
    
   } // End particle loop

   // Run Fastjet algorithm 
   vector <fastjet::PseudoJet> inclusiveJets, selectedJets, sortedJets;
   fastjet::ClusterSequence clustSeq(fjInputs, *jetDef);
   
   // For the first event, print the FastJet details
   if (iEvent == 0) {
     cout << "\nRan " << jetDef->description() << endl;
     cout << "Strategy adopted by FastJet was " << clustSeq.strategy_string() << endl << endl;
   }

   // Extract dijets and unclustered particles
   inclusiveJets = clustSeq.inclusive_jets();
   fastjet::Selector select_pt = fastjet::SelectorPtMin(50.0);
   selectedJets = select_pt(inclusiveJets);
   selectedJets = sorted_by_pt(selectedJets);

   if ( selectedJets.size() == 2 ){

     if ( TMath::Abs( selectedJets[0].eta() ) > 2.5 ) continue;
     
     for ( unsigned int j = 0; j < selectedJets.size(); j++ ){
       // Add inputs to lego plot
       lego->Fill(selectedJets[j].phi_std(), theta(selectedJets[j].eta()), selectedJets[j].perp());
     }

     mET->Fill(MET.phi(), etaCalc(MET.theta()), MET.pT());
     mET->SetFillColor(kWhite);
     hs->Add(mET);

     lego->SetFillColor(kRed);
     lego->GetXaxis()->SetTitle("#phi");
     lego->GetYaxis()->SetTitle("#theta");
     lego->GetZaxis()->SetTitle("p_{T}");
     hs->Add(lego);
     lego->Draw("LEGO1");
     gPad->WaitPrimitive();
   } 

  } // End event loop

  //pythia.statistics(); // Get statistics of the program run

  return 0; // End main program with error-free return
}
