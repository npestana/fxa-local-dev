#!/bin/bash -ex

_scripts/install_all.sh
pm2 delete servers.json
echo "Use './pm2 kill' to stop all the servers"
