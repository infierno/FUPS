FUPS
====

Random, Use{less,ful} Shell scripts from a franco-german-piratish friendship.
 
We create, share and improve everyday life use{less,full} scripts CLI in GNU/Linux.

You can contact us on IRC : #FUPS @ chat.freenode.net 6697 => irc.lc/freenode/fups/githubvisitor for a web client


To Do List
----------
- [X] Adding the Book Downloader
- [X] Adding the Backup Script
- [X] Adding the YT-DL scripts 
- [X] Adding the IPTables script
- [ ] incomplete

About the HTML & PHP Book Downloader
------------------------------------

This script is very simple.

You have an URL, and want to catch all the .php and .html pages (or another exotic extension)?

Well, just edit the URL shown as an example in the script, and specify the number of pages the book/tuto/site has.
chmod +x HTML_PHP_Book_Downloader.sh to make it executable
./HTML_PHP_Book_Downloader.sh to launch it.

And the second part of the script will rename every 1.{php,html} in 01.{php.html}.

And then you have your book. YOU SHOULD CREATE A SPECIFIC DIRECTORY FOR THE PAGES ! :D

About the Backup Script
-----------------------

This is script is very simple.
But you should look at the source before executing it, because of the 2nd part of the script wich involve the `read`
command.
If you use a lot of devices, it is recommended to let the script as is. Otherwise, you can specify the device's path for
a everyday use. If you want a simple reason to do so, well think about the 3 secondes you'll save at every backup :D
The script uses `rsync`, with a bunch of option, such as --progress, --stats, verbose and the 9th chamber of Shaoli-*hahem*-compression level. the --backup option is also enabled, with previous_versions.dir as backup directory.
If you do not want/need/know what is/ a backup directory inside the backup directory, you should remove this option.
