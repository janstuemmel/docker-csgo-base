#!/bin/bash

./steamcmd.sh \
  +login anonymous \
  +force_install_dir /server \
  +app_update 740 validate \
  +quit
