echo "+++++++++++++++++++++++++++++++++++++++"
date
echo "+++ SOURCE :: opora001.cjm0klmb9qta.us-east-2.rds.amazonaws.com"
INS/ORA/ins.reservation.bsh

for i in {1..5}
do
echo -ne "$i"'\r'
sleep 1
done
echo

echo "+++ TARGET :: rdsmysql003.cluster-cjm0klmb9qta.us-east-2.rds.amazonaws.com"
mysql -h rdsmysql003.cluster-cjm0klmb9qta.us-east-2.rds.amazonaws.com --ssl_mode=DISABLED --table<<EQ
use FLY1;
SELECT * FROM ( SELECT * FROM RESERVATION ORDER BY id DESC LIMIT 5 ) sub ORDER BY id ASC;
EQ
echo

echo "+++ READ REPLICA :: rdsmysql003r.cjm0klmb9qta.us-east-2.rds.amazonaws.com"
mysql -h rdsmysql003r.cjm0klmb9qta.us-east-2.rds.amazonaws.com --ssl_mode=DISABLED --table<<EQ
use FLY1;
SELECT * FROM ( SELECT * FROM RESERVATION ORDER BY id DESC LIMIT 5 ) sub ORDER BY id ASC;
EQ
echo
sleep 5
