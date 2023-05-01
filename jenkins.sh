#!/bin/bash

service jenkins start


apt-get install -y net-tools

watch netstat -tulpn

