#!/bin/bash

apt update
apt upgrade -y
apt install -y python3 python3-pip
pip install jupyterlab
