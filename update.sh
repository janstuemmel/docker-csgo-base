#!/bin/bash

./steamcmd.sh \
  +login anonymous \
  +force_install_dir $1 \
  +app_update 740 validate \
  +quit
