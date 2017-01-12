# Git Sync Cron

Run a cron job, every 5 minutes, that git-sync's a directory. Based on [docker-cron](https://github.com/Ekito/docker-cron) and [git-sync](https://github.com/simonthum/git-sync/).

## Usage

Just run the docker image with the folder of your git repository mounted on `/usr/src/repository`, like this:

```
$ docker run -v /host/folder/repo:/usr/src/repository --rm -it mjlescano/git-sync-cron:latest
```

| Make sure to know what [git-sync](https://github.com/simonthum/git-sync/) does to not mess up your git history.
