#!/bin/bash

mysql --defaults-extra-file=../dbaccess.cnf < 1_create_user_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 2_create_sayka_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 3_create_favorite_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 4_create_comment_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 5_create_tag_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 6_create_auth_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 7_create_session_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 8_create_auth_states_table.sql

