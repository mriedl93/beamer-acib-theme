#!/bin/bash

if [[ ! -d build ]]; then
    mkdir build
fi

ln -s beamer-acib-theme/Makefile .
ln -s beamer-acib-theme/logos .
