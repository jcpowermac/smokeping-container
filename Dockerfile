FROM registry.fedoraproject.org/fedora:31

RUN dnf install smokeping -y

COPY config /etc/smokeping/config
COPY smokeping.conf /etc/httpd/conf.d/smokeping.conf

RUN systemctl enable httpd; systemctl enable smokeping

EXPOSE 80 8080

CMD [ "/sbin/init" ]
