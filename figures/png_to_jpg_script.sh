#!/bin/bash

for i in *.png; do
   convert $i ${i%.png*}.jpg
done
