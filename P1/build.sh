#!/bin/bash

sudo podman build -t do180-p1  --build-arg NAME=mosco .
sudo podman images |grep do180-p1
