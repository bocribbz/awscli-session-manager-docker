FROM amazon/aws-cli

ENV LC_ALL=C.UTF-8

RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm" && \
    yum install -y ./session-manager-plugin.rpm
