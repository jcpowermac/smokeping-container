#!/bin/bash

sudo setsebool -P container_manage_cgroup true

sudo podman build -t smokeping .

sudo podman run --name smokeping -d -p 80:80 smokeping

