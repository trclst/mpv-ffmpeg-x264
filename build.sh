#!/bin/bash
# pgp key import
for f in {alsa-utils,ffmpeg,mpv}; do cd $f/keys/pgp && gpg --import * && cd ../../..; done
# build
for f in {alsa-utils,x264,libplacebo,ffmpeg,mpv}; do cd $f && makepkg -fscCri && cd ..; done
