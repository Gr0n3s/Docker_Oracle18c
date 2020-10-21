#!/bin/bash
su -p oracle -c "sqlplus / as sysdba << EOF
      create user ceranto identified by 'ceranto';

      grant create session to ceranto;
      grant create view, create procedure, create sequence,create table to ceranto;

      create user app identified by 'tecnoage';

      grant create view, create procedure, create sequence,create table to ceranto;
      grant create session to app;

      exit;
EOF"