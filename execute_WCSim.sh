#!/bin/bash
## Special SGE comments
#$ -S /bin/bash
###

cd /data/lasorak/hk/hk-hyperk/
source Source_At_Start_T2HK.sh
cd /data/lasorak/hk/hk-WCSim/

for (( it = 0; it < 15; it++ ))
do
    qsub -q SL6 run_wcsim.sh "numu" ${it} &
done
