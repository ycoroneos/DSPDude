#moved to http://mediabitch.mit.edu:7070/cgit/cgit.cgi/dspdude.git/ because binary files got too big :(
## DSPDude
##6.111 final project

People: Yanni Coroneos, Valentina Chamorro

DSPDude is a reprogrammable audio pre-amp that can be daisy-chained with
other units. Each unit takes input via SPDIF/TOSLink and transforms it
according to a user-defined, linear-phase frequency response. Output
goes to an AKM4396 codec which then outputs a differential, balanced
drive signal for an amplifier.

Implemented on an Artix 7 fpga sitting on a Nexys 4 dev kit
