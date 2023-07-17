FROM centos:7

RUN yum install -y openssh openssh-server openssh-clients perl nc sudo sysstat wget bind bind-utils

EXPOSE 22 25 465 587 110 143 993 995 80 443 8080 8443 7071

COPY install.sh /
COPY setup_dns.sh /
COPY create_zimbra_config.sh /
COPY all_yes /
#COPY *.tgz /

CMD ["/bin/bash", "/install.sh", "-d"]
