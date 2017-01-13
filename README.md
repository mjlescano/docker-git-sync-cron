# Git Sync Cron

Run a cron job, every 5 minutes, that git-sync's a directory. Based on [docker-cron](https://github.com/Ekito/docker-cron) and [git-sync](https://github.com/simonthum/git-sync/).

## Usage

**First**, make sure to know how [git-sync](https://github.com/simonthum/git-sync/) works, so you don't mess up your git history.

**Then**, enable synchronization on the branch you're going to sync with `git config --bool branch.BRANCH_NAME.sync true`.

**Finally**, just run the docker image with the folder of your git repository mounted on `/usr/src/repository`, like this:

```
$ docker run -v "$PWD:/usr/src/repository" --rm -it mjlescano/git-sync-cron:latest
```

Ω
