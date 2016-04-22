FROM registry:2

# Set timezone to Asia/Shanghai
RUN set -e \
        && echo "Asia/Shanghai" > /etc/timezone \
        && dpkg-reconfigure -f noninteractive tzdata

RUN { \
		echo "proxy:"; \
		echo "  remoteurl: https://registry-1.docker.io"; \
	} >> /etc/docker/registry/config.yml
