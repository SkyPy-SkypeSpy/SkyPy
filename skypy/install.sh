#!/bin/bash

sqlite3 skypy.db "CREATE TABLE IF NOT EXISTS Edited (s_id INT , s_author TEXT,
s_timestamp INT, s_editedby TEXT, s_edited_timestamp INT, s_body_xml TEXT,
PRIMARY KEY (s_id,s_edited_timestamp));


CREATE TABLE IF NOT EXISTS NonEdited (s_id INT PRIMARY KEY NOT NULL UNIQUE,
s_author TEXT, s_timestamp INT, s_editedby TEXT, s_edited_timestamp INT,
s_body_xml TEXT);"

chmod 777 skypy.sh

sed -i "s|SKYPE_LOGIN|$1|g" skypy.sh

current_directory=`pwd`

sed -i "s|CURR_DIR|$current_directory|g" skypy.sh

sed -i "s|CURR_DIR|$current_directory|g" clean.sh

