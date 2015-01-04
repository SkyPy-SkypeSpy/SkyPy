SkyPy
=====

SkyPy is a “Skype Edited History tracker”.


<b>What is SkyPy?</b></br>
Skype allows users to edit the last sent message. Though you would know
that your chat partner has edited the message, you have no clue about what
has the previous value. So SkyPy (Skype+sPy) keeps track of all such
modifications by any of your chat partners provided you run Skype and you
run SkyPy in the background.

It displays the message modification continuously in the terminal. Alongside,
it stores all the unedited message history in a separate table which can be
accesssed even when Skype is not running.

SkyPy in simple word is a “<u>Skype Edited History tracker<u> ”.


<b>Usage:</b>
</br>

• <b>Install</b></br>

To install SkyPy run the below command.</br>

<b>sh install.sh YOUR SKYPENAME</br></b>

This command will created the necessary database, tables and created
necessary changes so run SkyPy.
</br>


•</br> <b>Run</b></br>

Below command will keep track of all edited history by Skype and
prints it in the terminal.</br>

<b>sh run.sh</b>
</br>


•</br> <b>Clean</b></br>

If the messages being displayed are too much, they clean it by using
below command.</br>

<b>sh clean.sh</b>

This will take the backup of SkyPy database and clears the tables.
