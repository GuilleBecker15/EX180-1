#!/bin/bash

sudo podman run --name do180-p1c -d -p 20080:80 -e ENVIRONMENT=desderun do180-p1 
