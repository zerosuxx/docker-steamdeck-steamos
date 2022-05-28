#!/bin/bash

rm -rf florence*

sudo pacman -S --noconfirm \
    perl-xml-parser \
    intltool \
    glibc \
    linux-api-headers \
    glib2 \
    pango \
    harfbuzz \
    cairo \
    gdk-pixbuf2 \
    atk \
    dbus \
    at-spi2-core \
    libx11 \
    xorgproto \
    libxtst \
    libxi \
    librsvg \
    libxml2 \
    icu \
    libxext \
    libxcomposite \
    libxfixes \
    gtk3 \
    gstreamer \
    libnotify
    
curl -L -o florence-0.6.3.tar.bz2 https://sourceforge.net/projects/florence/files/florence/0.6.3/florence-0.6.3.tar.bz2/download \
    && bzip2 -df florence-0.6.3.tar.bz2 \
    && tar -xvf florence-0.6.3.tar \
    && cd florence-0.6.3 \
    && ./configure --prefix=/usr --without-docs \
    && make \
    && sudo make install
