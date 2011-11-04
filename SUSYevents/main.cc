#include <iostream> // Input and output
#include "Pythia.h" // Pythia

// ROOT
#include "TH1.h" // for histogramming
#include "TVirtualPad.h" // for interactive graphics
#include "TApplication.h" // for interactive graphics
#include "TFile.h" // for saving file

using namespace Pythia8;

int main(int argc, char* argv[])
{
  // Create the ROOT application environment. 
  TApplication theApp("hist", &argc, argv);

  int nEvents = 1;

  // Set up generation
  Pythia pythia; // Declare pythia object

  // pythia.readString("Top:gg2ttbar = on") // Switch process
  // pythia.init(2212,2212,7000.); // Initialize pp (PDG 2212) with eCM = 7 TeV
  pythia.readFile("main0.cmnd"); // Read file of parameters
  pythia.init(); // Initialize with .cmnd file parameters

  // Create file on which histogram(s) can be saved.
  TFile* outFile = new TFile("hist.root", "RECREATE");

  // Book histogram.
  TH1F *phi = new TH1F("phi","azimuthal angle", 100, 0, 6.28);

  // Show settings
  //pythia.settings.listAll();
  //pythia.settings.listChanged();    // Show changed settings
  //pythia.particleData.listAll();
  //pythia.particleData.listChanged();    // Show changed particle data

  for ( int iEvent = 0; iEvent < nEvents; iEvent++ ) { // Event loop
    if (!pythia.next()) continue;  // Generate an event. Fill event record.
    pythia.event.list(false,true);  // Print contents of event record (bool showScaleAndVertex, bool showMothersAndDaughters = false)

   for ( int i = 0; i < pythia.event.size(); i++ ){ // Particle loop
     //cout << "i = " << i << ", pT = " << pythia.event[i].pT() << endl;
     //if ( pythia.event[i].id() == 6 ) fprint("do something here");
     phi->Fill( pythia.event[i].phi() );
   }

  }

  //pythia.statistics(); // Get statistics of the program run
  
  // Show histogram. Possibility to close it.
  phi->Draw();
  std::cout << "\nDouble click on the histogram window to quit.\n";
  gPad->WaitPrimitive();

  // Save histogram on file and close file.
  phi->Write();
  delete outFile;

  return 0; // End main program with error-free return
}
