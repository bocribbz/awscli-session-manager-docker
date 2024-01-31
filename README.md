# awscli-session-manager-docker
Dockerfile to run awscli with session manager plugin

The awscli docker container doesn't have the session manager plugin by default.
There is an open issue about this: https://github.com/aws/aws-cli/issues/5373

The Dockerfile extends the awscli docker and installs session manager plugin.

It can be used in the similar manner as the default awscli docker, including the short version described in the docs
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-docker.html#cliv2-docker-aliases
