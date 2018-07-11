#!/bin/bash

# Builds portable dbgwas.
# Inspired by Páll Melsted blog (https://pmelsted.wordpress.com/2015/10/14/building-binaries-for-bioinformatics/),
# on how he and the other authors managed to make kallisto (Nicolas L Bray, Harold Pimentel, Páll Melsted and Lior Pachter,
# Near-optimal probabilistic RNA-seq quantification, Nature Biotechnology 34, 525–527 (2016), doi:10.1038/nbt.3519)
# portable in different linux distributions.

set -e

# Activate Holy Build Box environment.
source /hbb_exe/activate

set -eux

cd /io
yum -y install gsl-static.x86_64 lapack-devel.x86_64 blas-devel.x86_64 atlas-devel.x86_64 gcc-gfortran.x86_64
make
mv gemma gemma.0.93b
