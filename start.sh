#!/bin/bash

# Ensure the URL is parameterized
START_URL="${START_URL:-https://www.fast.com}"

# Set up Wayland environment
export XDG_RUNTIME_DIR=/tmp/wayland-runtime
mkdir -p $XDG_RUNTIME_DIR
chmod 700 $XDG_RUNTIME_DIR

# Start the minimalist Wayland compositor (Cage) with qutebrowser
cage -d \
    qutebrowser --target=window "$START_URL"
