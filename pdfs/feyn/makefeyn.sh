
rm ./*/*Graph*

for diag in \
 "ppgx" 
# "gbb" \
# "ppw" \
# "ppwbb" \
# "ppwbblnbb" \
# "ppxg" \
# "ppzg" \
# "ppzgnng" \
# "ppzsg" \
# "wln" \
# "znn"

do

 pushd "./${diag}"


#sed '/CLIENTSCRIPT="foo"/a CLIENTSCRIPT2="hello"' file
#\begin{fmfgraph*}

  pdflatex "${diag}.tex"
  mpost "${diag}Graph"
  pdflatex "${diag}.tex"

 popd

done
