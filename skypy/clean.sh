#!/bin/bash
cp skypy.db CURR_DIR/dblogs/skype.db.log_$(date +%F-%T)

sqlite3 skypy.db "DELETE FROM NonEdited; DELETE FROM Edited;"
echo "\n*********************************************************************************"
echo "**********    Skypy.db backup log created, and tables are cleared.     **********"
echo "**********                Run sh run.sh now                            **********" 
echo "*********************************************************************************\n"
