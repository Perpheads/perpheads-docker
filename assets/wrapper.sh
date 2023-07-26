#!/bin/bash

export $(cat .env | xargs)

# Run background job once upon start of the container, then every 30 minutes
/home/container/background-job.sh
/home/container/background-runner.sh &



exec /home/container/start.sh