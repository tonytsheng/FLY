echo "+++ SOURCE"
INS/ins.reservation.bsh

for i in {1..5}
do
echo -ne "$i"'\r'
sleep 1
done
echo

echo "+++ TARGET"
./fly2 <<EQ
set linesize 200
alter session set nls_date_format = 'MM/DD/YYYY HH24:MI:SS';
select * from (select * from reservation order by id desc) where rownum <=5 order by id asc ;
EQ

