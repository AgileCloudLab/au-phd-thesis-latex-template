#!/bin/bash

# From https://askubuntu.com/questions/822186/ubuntu-pdftoppm-converting-pdf-to-png
for i in *.pdf; do
   pdftoppm -png $i ${i%.pdf*}
done
