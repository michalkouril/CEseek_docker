FROM rocker/r-base:4.0.3

RUN apt-get -y update
RUN apt-get -y install git

RUN git clone https://github.com/viren-v/CEseek.git

RUN R -e 'install.packages("BiocManager")'
RUN R -e 'BiocManager::install("Biostrings")'

RUN apt-get -y install curl
RUN apt-get -y install libcurl4-gnutls-dev
RUN R -e 'BiocManager::install("GenomicRanges")'

COPY test.R /CEseek/

