This is a modification of version 0.93 of GEMMA, by Xiang Zhou and Matthew Stephens, for use with bugwas.

This is a fork from https://github.com/danny-wilson/gemma0.93b in order to build a static portable binary using Holy Build Box (https://github.com/phusion/holy-build-box).

The static portable binary is already available here: https://github.com/leoisl/gemma0.93b/raw/master/gemma.0.93b

If you want to rebuild the static portable binary, do bash build_portable_gemma.sh , and an executable named gemma.0.93b will be produced.

---- README FROM https://github.com/danny-wilson/gemma0.93b ----
This is a modification of version 0.93 of GEMMA, by Xiang Zhou and Matthew Stephens, for use with bugwas. The original README follows.

This is the source code for Docker Hub image https://hub.docker.com/r/dannywilson/gemma0.93b/

To download and run using Docker:
docker pull dannywilson/gemma0.93b
docker run -u $(id -u):$(id -g) -v $LOCALDIR:/home/ubuntu dannywilson/gemma0.93b $GEMMAOPTIONS

To download and run using Singularity:
singularity pull docker://dannywilson/gemma0.93b
singularity run -H $LOCALDIR:/home/ubuntu gemma0.93b.img $GEMMAOPTIONS

where $LOCALDIR is the local working directory containing the gemma input files and $GEMMAOPTIONS are the arguments passed to GEMMA. Note that GEMMA writes to a folder called output in the local working directory, which it creates if it does not already exist, so the local working directory must be writable.

---- ORIGINAL README ----
PROGRAM: Genome-wide Efficient Mixed Model Association (GEMMA)

AUTHORS: Xiang Zhou and Matthew Stephens

YEAR: 2012

DOCUMENTATION: A detailed user manual is available online and a recent version is provided inside the doc directory. A brief description is also available if you type "./gemma -h". Please refer to the online user manual for updated information.

LICENSE: Distributed under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

INSTALLATION: An executable binary (x86 64bit Linux) is available in the bin directory. No installation is necessary if the executable works in your system. Otherwise, see compilation section below. 

COMPILATION: You will need a standard C/C++ compiler such as GNU gcc, as well as GSL, LAPACK libraries. You will need to change the library paths in the Makefile accordingly.

For details on installing GSL library, please refer to:
http://www.gnu.org/s/gsl/

For details on installing LAPACK library, please refer to:
http://www.netlib.org/lapack/

USAGE: Type "./gemma" from the command line followed by the options of choice. Type "./gemma -h" for a brief description. Please refer to the online user manual for detailed and updated information.

Xiang Zhou, December 2012

