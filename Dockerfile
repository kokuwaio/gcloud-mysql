FROM google/cloud-sdk:319.0.0-alpine

COPY entrypoint.sh /

RUN apk add mysql-client rsync && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
