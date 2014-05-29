#!/usr/bin/env bash

apt-get update
apt-get -y install ocaml opam pkg-config m4 sqlite3 libssl-dev libz-dev sqlite3-pcre camlp4-extra libpcre++-dev libsqlite3-dev

#adduser --disabled-password ocaml 
#addgroup ocaml vagrant

su vagrant -c 'yes | opam init'
#not used currently as we use the system ocaml
#su ocaml -c 'yes | opam switch 4.01.0'
#su vagrant -c 'opam repository add opamocsigen https://github.com/ocsigen/opam-ocsigen.git'
su vagrant -c 'yes | opam install sqlite3-ocaml'
su vagrant -c 'yes | opam install eliom'

