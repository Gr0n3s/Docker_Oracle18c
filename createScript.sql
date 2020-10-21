SET DEFINE ON
SET TIME OFF
SET TIMING OFF
SET FEEDBACK OFF
WHENEVER SQLERROR EXIT ROLLBACK;
CLEAR SCR
PROMPT +-----------------------------------------+
PROMPT |          AJUSTES - DO BANCO             |
PROMPT +-----------------------------------------+
PROMPT +##### Autor Igor Ceranto - TecnoAge #####+

alter session set "_ORACLE_SCRIPT"=true;

CREATE USER "APP" IDENTIFIED BY "tecnoage"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";
-- ROLES
GRANT "DBA" TO "APP" WITH ADMIN OPTION;

-- SYSTEM PRIVILEGES
GRANT ALTER SESSION TO "APP" WITH ADMIN OPTION;
GRANT CREATE SESSION TO "APP" WITH ADMIN OPTION;
grant create view, create procedure, create sequence,create table to "APP";

exit;