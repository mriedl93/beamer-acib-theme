#!/bin/bash

if [[ ! -d build ]]; then
  mkdir build
fi

if [[ ! -d figures ]]; then
  mkdir figures
fi

ln -s beamer-acib-theme/Makefile .

cp beamer-acib-theme/presentation.tex .
