FROM codercom/code-server:latest

LABEL org.opencontainers.image.authors="colsrch"

ENV TZ Asia/Shanghai

ADD ./sources.list /etc/apt/sources.list

RUN sudo apt-get update -y && \
    sudo apt install -y wget ssh vim nodejs npm iputils-ping telnet netcat-traditional iproute2 dnsutils && \
    sudo sh -c "$(wget -O- https://cdn.jsdelivr.net/gh/robbyrussell/oh-my-zsh/tools/install.sh)" && \
    sudo chsh -s /usr/bin/zsh && \
    sudo npm install hexo-cli -g