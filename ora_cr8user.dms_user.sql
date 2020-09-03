create user dms_user identified by dms_user default tablespace system;
grant create session to dms_user;
grant create any table to dms_user;
grant drop any table to dms_user;
grant unlimited tablespace to dms_user;
grant execute any procedure to dms_user;
grant alter any table to dms_user;
grant update any table to dms_user;
grant create any index to dms_user;
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$ARCHIVED_LOG','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOG','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOGFILE','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$DATABASE','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$THREAD','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$PARAMETER','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$NLS_PARAMETERS','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$TIMEZONE_NAMES','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$TRANSACTION','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('DBA_OBJECTS','DMS_USER'); 
exec rdsadmin.rdsadmin_util.grant_sys_object('DBA_REGISTRY','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('OBJ$','DMS_USER');
grant SELECT on ALL_INDEXES to dms_user;
grant SELECT on ALL_OBJECTS to dms_user;
grant SELECT on ALL_TABLES to dms_user;
grant SELECT on ALL_USERS to dms_user;
grant SELECT on ALL_CATALOG to dms_user;
grant SELECT on ALL_CONSTRAINTS to dms_user;
grant SELECT on ALL_CONS_COLUMNS to dms_user;
grant SELECT on ALL_TAB_COLS to dms_user;
grant SELECT on ALL_IND_COLUMNS to dms_user;
grant SELECT on ALL_LOG_GROUPS to dms_user;
GRANT SELECT on SYS.DBA_REGISTRY to dms_user;
GRANT SELECT on SYS.OBJ$ to dms_user;
GRANT SELECT on DBA_TABLESPACES to dms_user;
GRANT SELECT on ALL_TAB_PARTITIONS to dms_user;
GRANT SELECT on ALL_ENCRYPTED_COLUMNS to dms_user;
GRANT SELECT ANY TRANSACTION to dms_user;
GRANT SELECT on V_$LOGMNR_LOGS to dms_user;
GRANT SELECT on V_$LOGMNR_CONTENTS to dms_user;
GRANT SELECT on V_$LOG to dms_user;
GRANT SELECT on V_$ARCHIVED_LOG to dms_user;
GRANT SELECT on V_$LOGFILE to dms_user;
GRANT SELECT on V_$TRANSACTION to dms_user;
exec rdsadmin.rdsadmin_util.grant_sys_object('DBA_TABLESPACES','DMS_USER');
grant SELECT on ALL_TAB_PARTITIONS to dms_user;
exec rdsadmin.rdsadmin_util.grant_sys_object('ALL_ENCRYPTED_COLUMNS','DMS_USER');
grant SELECT on ALL_VIEWS  to dms_user;

exec rdsadmin.rdsadmin_util.grant_sys_object('DBMS_LOGMNR','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOGMNR_LOGS','DMS_USER');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOGMNR_CONTENTS','DMS_USER');
grant logmining to dms_user;

-- for use with SCT
grant SELECT ANY DICTIONARY to dms_user;

grant select_catalog_role to dms_user;
grant execute_catalog_role to dms_user;

grant SELECT ANY TRANSACTION to dms_user;
grant SELECT on V$NLS_PARAMETERS to dms_user;
grant SELECT on V$TIMEZONE_NAMES to dms_user;
grant SELECT on ALL_INDEXES to dms_user;
grant SELECT on ALL_OBJECTS to dms_user;
grant SELECT on DBA_OBJECTS to dms_user;
grant SELECT on ALL_TABLES to dms_user;
grant SELECT on ALL_USERS to dms_user;
grant SELECT on ALL_CATALOG to dms_user;
grant SELECT on ALL_CONSTRAINTS to dms_user;
grant SELECT on ALL_CONS_COLUMNS to dms_user;
grant SELECT on ALL_TAB_COLS to dms_user;
grant SELECT on ALL_IND_COLUMNS to dms_user;
grant DROP ANY TABLE to dms_user;
grant SELECT ANY TABLE to dms_user;
grant INSERT ANY TABLE to dms_user;
grant UPDATE ANY TABLE to dms_user;
grant CREATE ANY VIEW to dms_user;
grant DROP ANY VIEW to dms_user;
grant CREATE ANY PROCEDURE to dms_user;
grant ALTER ANY PROCEDURE to dms_user;
grant DROP ANY PROCEDURE to dms_user;
grant CREATE ANY SEQUENCE to dms_user;
grant ALTER ANY SEQUENCE to dms_user;
grant DROP ANY SEQUENCE to dms_user;
grant SELECT on DBA_USERS to dms_user;
grant SELECT on DBA_TAB_PRIVS to dms_user;
grant SELECT on DBA_OBJECTS to dms_user;
grant SELECT on DBA_SYNONYMS to dms_user;
grant SELECT on DBA_SEQUENCES to dms_user;
grant SELECT on DBA_TYPES to dms_user;
grant SELECT on DBA_INDEXES to dms_user;
grant SELECT on DBA_TABLES to dms_user;
grant SELECT on DBA_TRIGGERS to dms_user;

grant select,insert,update,alter,delete on fly1.airline to dms_user;
grant select,insert,update,alter,delete on fly1.airport to dms_user;
grant select,insert,update,alter,delete on fly1.employee to dms_user;
grant select,insert,update,alter,delete on fly1.reservation to dms_user;

exec rdsadmin.rdsadmin_util.grant_sys_object('V_$ARCHIVED_LOG','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOG','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOGFILE','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$DATABASE','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$THREAD','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$PARAMETER','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$NLS_PARAMETERS','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$TIMEZONE_NAMES','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$TRANSACTION','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('DBA_REGISTRY','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('OBJ$','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('ALL_ENCRYPTED_COLUMNS','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOGMNR_LOGS','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$LOGMNR_CONTENTS','dms_user','SELECT');
exec rdsadmin.rdsadmin_util.grant_sys_object('DBMS_LOGMNR','dms_user','EXECUTE');
exec rdsadmin.rdsadmin_util.grant_sys_object('REGISTRY$SQLPATCH','dms_user','SELECT'); (as of AWS DMS versions 3.3.1 and later)
exec rdsadmin.rdsadmin_util.grant_sys_object('V_$STANDBY_LOG','dms_user','SELECT'); (for RDS Active Dataguard Standby (ADG))
exec rdsadmin.rdsadmin_util.grant_sys_object('ENC$','dms_user','SELECT'); (for transparent data encryption (TDE))
grant lock any table to dms_user;

