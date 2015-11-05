#!/bin/bash

set -e

if [ "${1:0:1}" = '-' ]; then
    set -- unbound "$@"
fi

if [ "$1" = "unbound" ]; then
    if [ ! -d "/var/unbound/" ]; then
        mkdir -p -m 0750 /var/unbound
        chown unbound. /var/unbound
        echo "Setup SSL keys for unbound-control"
        unbound-control-setup -d /var/unbound
    fi
fi

exec "$@"
