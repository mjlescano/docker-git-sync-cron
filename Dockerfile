FROM ubuntu:yakkety
MAINTAINER Matías Lescano <mjlescano@protonmail.com>

# Install Cron && Git
RUN apt-get update && apt-get -y install git cron

# Add git-sync command
ADD https://raw.githubusercontent.com/simonthum/git-sync/82f3041e7c3bae5c97e8f627be72f1cd9fb87ee4/git-sync /usr/src

# Add crontab file in the cron directory
COPY crontab /etc/cron.d/run-git-sync

# Give execution rights
RUN chmod +x /etc/cron.d/run-git-sync /usr/src/git-sync

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

ENV REPO_DIR=/usr/src/repository

CMD cron && tail -f /var/log/cron.log
