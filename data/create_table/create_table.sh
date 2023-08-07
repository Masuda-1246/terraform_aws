#!/bin/bash

mysql --defaults-extra-file=../dbaccess.cnf < 1_create_user_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 2_create_post_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 3_create_favorite_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 4_create_comment_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 5_create_session_table.sql
mysql --defaults-extra-file=../dbaccess.cnf < 6_create_tag_table.sql

