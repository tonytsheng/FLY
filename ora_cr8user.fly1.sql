create tablespace FLY1;
create user FLY1 identified by fly1 default tablespace FLY1;
grant create session to fly1;
grant create table to fly1;
grant connect to fly1;
grant create sequence to fly1;
grant unlimited tablespace to fly1;

exec rdsadmin.rdsadmin_util.alter_supplemental_logging( p_action => 'ADD');

exec rdsadmin.rdsadmin_util.alter_supplemental_logging('ADD','PRIMARY KEY');

# on both pri and replica
exec rdsadmin.rdsadmin_util.set_configuration('archivelog retention hours', 24);
