awk -F',' '{printf "insert into airport values (\x27%s\x27, \
\x27%s\x27,  \
%d, \
\x27%s\x27);  \
  \n",$1, $2, $3, $9}' airport.dat
