django dev environment for docker-compose
=========================================
This code is a try to set up a viable local environment that can be used for
development od Django apps using Docker Compose.


* `dc.sh` is a call to `docker-compose`.
* `dev_run.sh` builds and runs the environment. Subsequent build should use cache.
* `dev_static.sh` installs front-end dependencies and builds the assets.
* `dev_static.sh watch` runs watch command on Yarn.

Containers use shared `static_compiled` volume to exchange compiled assets between themselves.

App code and static source should be synced with the containers, because they're volumes mounted in local directories.
