FROM ubuntu:18.04

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update && apt-get install -y --no-install-recommends \
		build-essential \
		cmake \
		doxygen \
		graphviz \
		pkg-config \
		qt5-default \
		libqt5sql5-sqlite \
		libqt5sql5-mysql \
		sudo \
	&& echo 'user ALL=(ALL) NOPASSWD: ALL' >/etc/sudoers.d/user \
	&& rm -rf /var/lib/apt/lists/*

RUN useradd -m -d /home/user user
USER user
ENV HOME=/home/user
WORKDIR /home/user
CMD ["/bin/bash"]
