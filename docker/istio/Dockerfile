FROM centos:7.8.2003

# 配置时区为东八区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
# 安装必要组件
RUN yum install -y nscd mtr net-tools telnet bind-utils wget &&\
    yum clean all && \
    rm -rf /var/cache/yum/*

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod -R 777 docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]