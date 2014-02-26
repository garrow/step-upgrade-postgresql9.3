#!/bin/sh
# Adapted from https://gist.github.com/petere/5893799/

echo "Adding sources list"
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"

echo "Importing repository signing key"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update

echo "Installing PostgreSQL 9.3"
sudo apt-get install postgresql-9.3 postgresql-contrib-9.3
