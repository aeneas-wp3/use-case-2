#!/bin/bash

echo "========="
echo "Print environment details"
printenv
echo "========="
/bin/ls -ltr

singularity --version

export SINGULARITY_BINDPATH=$PWD:/mnt
singularity pull --name pulsar.v1.1.simg shub://aeneas-wp3/use-case-2:pulsar.gbncc
git clone https://github.com/TMCantwell/pulsar_timing_containers.git
mv pulsar_timing_containers/* .
singularity exec pulsar.v1.1.simg pam -FT -e FT -E /mnt/$1 /mnt/$2
singularity exec pulsar.v1.1.simg pat -s /mnt/$3 -f tempo2 /mnt/$4 > $5
