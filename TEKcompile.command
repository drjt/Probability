#! /bin/bash
cd ~/Documents/mathbook/examples/Probability
../../script/mbx -c webwork -s https://webwork-ptx.aimath.org -d webwork-extraction  ProbabilityMain.xml
xsltproc --xinclude --stringparam webwork.extraction ~/Documents/mathbook/examples/Probability/webwork-extraction/webwork-extraction.xml  ../../xsl/pretext-merge.xsl ProbabilityMain.xml > merge.ptx
xsltproc --xinclude  ../../xsl/mathbook-latex.xsl merge.ptx
pdflatex -interaction=nonstopmode Essentials_Probability_And_Statistics.tex
