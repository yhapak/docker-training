#!/bin/bash
for i in {1..5}
do
   echo "Hello this is $i message" | nc -N server 8080
done
