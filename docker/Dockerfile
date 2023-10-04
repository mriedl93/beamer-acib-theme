FROM texlive/texlive:latest-full

RUN apt-get update -q
RUN apt-get install -qy wget unzip

ADD ./get-fira-font.sh ./get-fira-font.sh
RUN ./get-fira-font.sh

CMD bash
