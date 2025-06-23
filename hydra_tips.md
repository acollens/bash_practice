# download data 
wget URL

# start an interactive session in hydra
info from here: https://confluence.si.edu/display/HPC/Interactive+Use
qrsh -pe mthread 2 

1. how to see what jobs you have running
qstat
2. kill a job you have running in hydra

qdel <job-ID>

# to leave an interactive session
exit

# to see a live output from an output file

tail -f <output file>

# to see what bioinformatics software are available
module avail bioinformatics/