#!/bin/bash
username="`cat ftp_username`"
password="`cat ftp_password`"
cd build; ftp -p -v -n ftpupload.net <<END_SCRIPT
quote USER "$username"
quote PASS "$password"
cd htdocs
delete index.html
put index.html
bye
END_SCRIPT
