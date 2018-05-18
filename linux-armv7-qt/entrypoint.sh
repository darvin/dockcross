#!/bin/bash
. /opt/poky/environment-setup-cortexa9hf-neon-poky-linux-gnueabi
"$@"

if [ $# -eq 0 ]
  then
    /dockcross/entrypoint.sh
fi
