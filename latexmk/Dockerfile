FROM ubuntu
MAINTAINER iqueiroz

RUN apt-get -qq update && \
    apt-get install -y --no-install-recommends \
      latexmk \
      texlive-fonts-extra \
      texlive-fonts-recommended \
      texlive-latex-base \
      texlive-latex-extra \
      texlive-latex-recommended \
      texlive-luatex \
      texlive-xetex \
      texlive-pictures \
      texlive-lang-english \
      lmodern \
      fonts-font-awesome \
      latexmk && \
    /bin/mkdir -pv /work

WORKDIR /work

ADD ./docker-entrypoint.sh /usr/sbin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
