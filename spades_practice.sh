# /bin/sh
# ----------------Parameters---------------------- #
#$ -S /bin/sh
#$ -pe mthread 16
#$ -q sThC.q
#$ -l mres=128G,h_data=8G,h_vmem=8G
#$ -cwd
#$ -j y
#$ -N spades_example
#$ -o logs/spades_example.log
#$ -M collensab@si.edu
#
# ----------------Modules------------------------- #
module load bioinformatics/spades/3.14.0
module load bioinformatics/python/3.8.5
#
# ----------------Your Commands------------------- #
#
echo + `date` job $JOB_NAME started in $QUEUE with jobID=$JOB_ID on $HOSTNAME
echo + NSLOTS = $NSLOTS
#

spades myfile.fasta 

#
echo = `date` job $JOB_NAME done