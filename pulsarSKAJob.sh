ls
mkdir prmon && tar xf prmon_1.0.1_x86_64-static-gnu72-opt.tar.gz -C prmon --strip-components 1

./prmon/bin/prmon -p $$ -i 1 &
export SINGULARITY_BINDPATH=$PWD:/mnt
singularity exec pulsar-v1.3.simg dspsr -A -E /mnt/$1 -turns 3 -O /mnt/$2 /mnt/$3
singularity exec pulsar-v1.3.simg pat -s /mnt/$4 -f tempo2 /mnt/$2.ar > $5
ls
