# Invokes docker to build portable gemma.
# Inspired by Páll Melsted blog (https://pmelsted.wordpress.com/2015/10/14/building-binaries-for-bioinformatics/),
# on how he and the other authors managed to make kallisto (Nicolas L Bray, Harold Pimentel, Páll Melsted and Lior Pachter,
# Near-optimal probabilistic RNA-seq quantification, Nature Biotechnology 34, 525–527 (2016), doi:10.1038/nbt.3519)
# portable in different linux distributions.
set -eu
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "SCRIPT_DIR = ${SCRIPT_DIR}"

#git clone blablabla

sudo docker run -t -i --rm \
  -v ${SCRIPT_DIR}:/io \
  phusion/holy-build-box-64:latest \
  bash /io/build_portable_gemma_core.sh
