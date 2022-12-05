FROM rocker/r-base
MAINTAINER Jean-Baptiste Graille <jbgaille@gmail.com>
RUN apt-get update -qq && apt-get install -y \
  git-core \
  libssl-dev \
  libcurl4-gnutls-dev

RUN R -e 'install.packages("plumber", repo = "https://ftp.fau.de/cran/")'
RUN mkdir /usr/scripts
COPY app.R /usr/scripts/app.R
COPY helloWorld.R /usr/scripts/helloWorld.R
EXPOSE 8000
CMD Rscript /usr/scripts/app.R
