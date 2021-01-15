#!/bin/bash

echo -e "HTTP/1.1 200 OK\n\n $(cat /scripts/index.html)" | nc -lkp 8080
