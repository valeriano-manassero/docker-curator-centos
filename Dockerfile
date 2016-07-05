FROM    centos:7

MAINTAINER      Valeriano Manassero <valeriano.manassero@staff.aruba.it>

RUN yum -y update && \
    yum clean all && \
    yum -y install cronie

RUN curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python

RUN pip install elasticsearch-curator==3.5.1

ENV ELASTICSEARCH_HOSTNAME elasticsearch
ENV ELASTICSEARCH_PORT 9200
ENV ELASTICSEARCH_SPACE_THRESHOLD 10
ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh
 
ENTRYPOINT ["/docker-entrypoint.sh"]
