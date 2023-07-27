#!/bin/bash

export $(cat .env | xargs)

# Run background job once upon start of the container, then every 30 minutes
/background-job.sh
/background-runner.sh &



exec /start.sh