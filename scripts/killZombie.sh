#!/bin/bash
docker ps -a | grep "Exited" | docker rm `awk '{print $1}'`
