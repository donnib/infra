#!/bin/sh
#
# You can have only one forced command in ~/.ssh/authorized_keys. Use this
# wrapper to allow several commands.

case "$SSH_ORIGINAL_COMMAND" in
    "docker container restart lms")
        docker container restart lms
        ;;
    *)
        echo "Access denied"
        exit 1
        ;;
esac