FROM rocker/verse:latest

RUN apt-get update \
	&& apt-get install -y python-pip \
	# dependencies for TEtranscripts
	&& pip install Cython \
	&& pip install pysam \
	&& R -e 'install.packages("BiocManager")' \
	&& R -e 'BiocManager::install("DESeq2")' \
	&& pip install TEtranscripts \
