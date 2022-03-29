FROM i386/ubuntu:bionic

WORKDIR /srv

RUN apt-get update && apt-get install -y  \
 iputils-ping \
 libgtk2.0-0 \
 gtk2-engines \
 gtk2-engines-murrine \
 libcanberra-gtk-module \
 gtk2-engines-pixbuf \
 libatk-adaptor \
 libgail-common \
 gnome-icon-theme && \
 apt-get -y autoremove && \
 apt-get clean && \
 rm -rf /var/lib/apt/lists/* \
;

COPY "bbcb2-2.0~a1.build72_i386.deb" bbcb.deb

RUN dpkg -i bbcb.deb && apt-get install -f

#ENTRYPOINT sleep 300000000