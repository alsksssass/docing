#!/bin/sh

set -e

passwd=$FTP_PASSWORD
user_id=$USER_ID

if [ -z $(getent passwd wordpress) ]; then
	echo -e FTP_USER=$USER_ID -e "$passwd\n$passwd" | adduser wordpress -h /var/lib/nginx/wordpress
fi

exec dumb-init -- vsftpd /etc/vsftpd/vsftpd.conf
