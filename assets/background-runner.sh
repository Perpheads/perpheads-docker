#!/bin/bash

while true  
do
  sleep $BACKGROUND_TASK_INTERVAL
  /home/container/background-job.sh
done