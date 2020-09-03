echo "+++ SOURCE"
INS/ORA/ins.reservation.bsh

for i in {1..5}
do
echo -ne "$i"'\r'
sleep 1
done
echo

echo "+++ TARGET"
mysql -h rdsmysql003.cluster-cjm0klmb9qta.us-east-2.rds.amazonaws.com -P 3306 -u fly1 -pfly1 --ssl_mode=DISABLED<<EQ
use FLY1;
SELECT * FROM ( SELECT * FROM RESERVATION ORDER BY id DESC LIMIT 5 ) sub ORDER BY id ASC;
EQ

