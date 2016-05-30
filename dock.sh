#/usr/bin/bash
export RBT_ROOT=/home/adria/Escritorio/rDock_2013.1_src
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RBT_ROOT/lib
export PATH=$PATH:$RBT_ROOT/bin
rbcavity -r sah_rdock.prm -was -d > sah_cavity.log
for file in split*sd;do rbdock -i $file -o ${file%%.*}_out -r sah_rdock.prm -p dock.prm -n 20; done

