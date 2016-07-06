# valerianomanassero/curator-centos
A Docker container for Curator, a maintenance task for Elasticsearch scheduled every hour.
The image is based on a CentOS 7 image.

## Recommended Options

**Environment**

- ENV ELASTICSEARCH_HOSTNAME - Defines Elasticsearch instance hostname
- ENV ELASTICSEARCH_PORT - Defines Elasticsearch instance port
- ENV ELASTICSEARCH_SPACE_THRESHOLD - Defines the maximum space threshold (in GB) for Elasticsearch indexes. Exceeding space will be cut. 

## Docker usage

```
docker run -e ENV ELASTICSEARCH_HOSTNAME=elasticsearch -e ENV ELASTICSEARCH_PORT=9200 -e ENV ELASTICSEARCH_SPACE_THRESHOLD=10 -d valerianomanassero/curator-centos
```
