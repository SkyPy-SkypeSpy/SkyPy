#!/bin/bash

echo "*********************************************************************************"
echo "**********                    Skypy is running                         **********"
echo "**********                  Press CTRL+C to stop                       **********" 
echo "*********************************************************************************"

# Attaching the New Database called DB1 to Skype Database
sqlite3 ~/.Skype/SKYPE_LOGIN/main.db "ATTACH DATABASE
'CURR_DIR/skypy.db' as DB1;

insert or ignore into DB1.Edited select id, author, timestamp,
edited_by,edited_timestamp, body_xml from ( select id, author, timestamp,
edited_by,edited_timestamp, body_xml from Messages order by id desc limit 10)
where edited_by is NOT NULL order by id;

insert or ignore into
DB1.NonEdited select id, author, timestamp,
edited_by,edited_timestamp, body_xml from ( select id, author, timestamp,
edited_by,edited_timestamp, body_xml from Messages order by id desc limit 10) 
where edited_by is NULL order by id; 


select DB1.NonEdited.s_body_xml, 'Changed to', DB1.Edited.s_body_xml,'by',DB1.
Edited.s_editedby,'at',datetime(DB1.Edited.s_edited_timestamp,'unixepoch')
from DB1.Edited, DB1.NonEdited where DB1.Edited.s_id = DB1.NonEdited.s_id ;

"
