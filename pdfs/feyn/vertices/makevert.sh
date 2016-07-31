
rm ./*/*Graph*

for diag in \
 "ggg" \
 "gggg" \
 "gqq" \
 "pqq" \
 "wln" \
 "wud" \
 "xww" \
 "xyww" \
 "hmm" \
 "zff"


do

 pushd "./${diag}"


#sed '/CLIENTSCRIPT="foo"/a CLIENTSCRIPT2="hello"' file
#\begin{fmfgraph*}

  pdflatex "${diag}.tex"
  mpost "${diag}Graph"
  pdflatex "${diag}.tex"

 popd

done
