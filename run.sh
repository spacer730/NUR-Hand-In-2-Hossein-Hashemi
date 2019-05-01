#!/bin/bash

echo "Run Hand-In Final Exercise"

echo "Creating the plotting directory if it does not exist"
if [ ! -d "plots" ]; then
  echo "Directory does not exist create it!"
  mkdir plots
fi

# Script that pipes output to a file
echo "Run the script for question 1..."
python3 Question-1.py > Question-1.txt

echo "Run the script for question 2 ..."
python3 Question-2.py > Question-2.txt

echo "Generating the pdf"

pdflatex Final-Exercise.tex
bibtex Final-Exercise.aux
pdflatex Final-Exercise.tex
pdflatex Final-Exercise.tex
