#include "Pythia.h"
using namespace Pythia8;

int main(void)
{
  int nEvents = 1;

  Pythia pythia; // Declare pythia object

  pythia.readFile("main0.cmnd");
  pythia.init();

  // pythia.settings.listChanged();
  // pythia.particleData.listChanged();

  for ( int i = 0; i < nEvents; i++ ) { // Event loop
    pythia.next();  // Generate a new event
    pythia.event.list(false,true);
  }

  return 0;

}
