#!/bin/bash

echo "MinIO ACCESS KEY"
date +%s | sha256sum | base64 | head -c 32 ; echo

echo "MiNIO SECRET KEY"
date +%s | sha256sum | head -c 64 ; echo
