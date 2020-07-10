# LFTP Docker Image

[![Docker Pulls](https://img.shields.io/docker/pulls/stefanso/lftp.svg)](https://hub.docker.com/r/stefanso/lftp)

LFTP is useful when you don't have SSH access to a server but want rsync functionality on S/FTP basis.

## How to use this image

Just prepend lftp command with `docker run stefanso/lftp`:

`docker run --rm -i stefanso/lftp lftp --help`

Copy folder from local to remote using docker volume

`docker run --rm -i -v <path-to-local-folder>:/mnt stefanso/lftp lftp -c "open -u {$USER},{$PASSWORD} {$REMOTE_SERVER_HOSTNAME_OR_IP}; set ssl:verify-certificate no; mirror -R /mnt {$REMOTE_PATH}"`
