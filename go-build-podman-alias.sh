#!/usr/bin/env bash

go () {
    podman run --rm -v "$PWD":/usr/src/"$(basename $PWD)":z -w /usr/src/"$(basename $PWD)" golang:1.14 go "$@"
}
