FROM rstudio/plumber
MAINTAINER Jean-Baptiste Graille <jbgaille@gmail.com>
RUN apt-get update -qq && apt-get install -y \
  git-core \
  libssl-dev \
  libcurl4-gnutls-dev

RUN apt-get update && apt-get install libpq5 -y

#RUN R -e 'install.packages("plumber", repo = "https://ftp.fau.de/cran/")'
RUN mkdir /usr/scripts/
WORKDIR /usr/scripts/
COPY app.R /usr/scripts/app.R
COPY helloWorld.R /usr/scripts/helloWorld.R

EXPOSE 8000
CMD Rscript /usr/scripts/app.R
