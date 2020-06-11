FROM centos:centos7
RUN yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum install -y update httpd iproute mariadb mariadb-server && yum clean all
RUN yum install -y --enablerepo=remi,remi-php73 php php-common php-cli php-json php-intl php-mbstring php-xml php-xmlrpc php-soap php-opcache php-pdo php-mysqlnd php-zip php-gd.x86_64
RUN systemctl enable httpd
RUN systemctl enable mariadb.service