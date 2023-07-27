#!/bin/bash

while true  
do
  sleep $BACKGROUND_TASK_INTERVAL
  /background-job.sh
done