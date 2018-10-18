../../script/mbx -c webwork -s https://webwork-ptx.aimath.org -d webwork-extraction  ProbabilityMain.xml
xsltproc --xinclude --stringparam webwork.extraction ~/Documents/mathbook/examples/Probability/webwork-extraction/webwork-extraction.xml  ../../xsl/pretext-merge.xsl ProbabilityMain.xml > merge.ptx
xsltproc --xinclude  ../../xsl/mathbook-html.xsl merge.ptx


