# awscli-session-manager-docker
Dockerfile to run awscli with session manager plugin

The awscli docker container doesn't have the session manager plugin by default.
There is an open issue about this: https://github.com/aws/aws-cli/issues/5373

The Dockerfile extends the awscli docker and installs session manager plugin.

It can be used in the similar manner as the default awscli docker, including the short version described in the docs
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-docker.html#cliv2-docker-aliases

## Sample usage

Build the container

```console
docker build . -t awscli-local
```

Use an alias:

```
# you can use it as an alias
alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $PWD:/aws awscli-local'
# or a function
aws () {
    docker run --rm -it -v ~/.aws:/root/.aws -v $PWD:/aws awscli-local "$@"
}
```

If you get Ctrl+M chars in the output, consider changing the args from `-it` to `-i`.
