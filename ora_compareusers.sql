REM
REM Verify if the user created/cloned with correct privs
REM

define o_user=DMS_USER
define c_user=FLY
set linesize 140
col username        format a30
col profile         format a20

col default_tablespace   head "Default|Tablespace" format a20
col temporary_tablespace head "Temp|Tablespace"    format a20
col admin_option         head "Admin|Option"       format a7
col granted_role    format a20
col owner           format a30
col grantee         format a20
col table_name      format a30
col column_name     format a30
col privilege       format a20
col grantable       format a10
col tablespace_name format a30
col max_bytes       format a30
col synonym_name format a30
col table_owner  format a30
prompt
prompt checking user cloned
prompt
select
      username
     ,default_tablespace
     ,temporary_tablespace
     ,profile
from
      dba_users
where
      username in ( '&o_user','&c_user' )
/
prompt
prompt checking user SYS privs
prompt
select grantee, privilege, admin_option from sys.dba_sys_privs
where grantee in ( '&o_user','&c_user' )
/
prompt
prompt checking ROLE assigned to user
prompt
select grantee, granted_role, admin_option
from   sys.dba_role_privs
where  grantee in ( '&o_user','&c_user' )
/
prompt
prompt checking table/object assigned to user
prompt
select owner, table_name, privilege, grantable
from sys.dba_tab_privs
where grantee in ( '&o_user','&c_user' )
/
prompt
prompt checking col privs assigned to user
prompt
select
       owner
      ,grantee
      ,table_name
      ,column_name
      ,privilege
      ,grantable
from
       sys.dba_col_privs
where grantee in ( '&o_user','&c_user' )
/
prompt
prompt checking QUOTA on TBS assigned to user
prompt
select tablespace_name, max_bytes
from sys.dba_ts_quotas
where username in ( '&o_user','&c_user' )
/
prompt
prompt checking synonym for user
prompt
SELECT synonym_name, table_owner, table_name
FROM dba_synonyms
WHERE owner in ( '&o_user','&c_user' )
/

rem
rem ------------------------ End Of Script --------------------------
