#!/bin/bash
# Start cron and Flask app

# Ensure averages.txt is fresh
> averages.txt
bash calculate_averages.sh

# Load cronjob file into crontab
crontab cronjob

# Start cron service
cron

# Start Flask app
flask run --host=0.0.0.0
