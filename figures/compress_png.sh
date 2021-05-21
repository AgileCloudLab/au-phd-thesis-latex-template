#!/bin/bash

for i in *.png; do
   convert -resize 50% $i ${i%.png*}_compressed.png
done
