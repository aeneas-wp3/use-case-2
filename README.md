This repository contains the code needed to run use case 2. 

The bash script will run the use case and should be run as:

./pulsar_job.sh J1911+37_t2.par GBNCC_J1911+37_period.fits 1911+37_820MHz.std GBNCC_J1911+37_period.FT ToA.txt

It will pull a container from singularity hub and git clone the data needed.

The file  pulsar-job-submit will submit a job to GridPP that will fold simulated SKA data.
