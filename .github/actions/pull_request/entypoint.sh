#!/bin/sh

set -e

sh -c "curl --silent --show-error --fail -X POSTT -H 'Content-Type: application.json' $*"
