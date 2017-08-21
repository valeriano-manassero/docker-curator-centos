# valerianomanassero/curator-centos
A Docker container for Curator, a maintenance task for Elasticsearch scheduled every hour.
The image is based on a CentOS 7 image.
Default configuration is to purge logstash-* indices older than 30 days; you can override actions and configurations mounting files as in examples below.

## Recommended Options

**Files**

- ./configs/curator.yml:/root/.curator/curator.yml:ro (Read Only) - General configuration file
- ./configs/actions.yml:/root/.curator/actions.yml:ro (Read Only) - Actions configuration file 

## Docker example usages

```
docker run -d valerianomanassero/curator-centos:5.1.2
```

```
docker run -v ./configs/curator.yml:/root/.curator/curator.yml:ro -v ./configs/actions.yml:/root/.curator/actions.yml:ro -d valerianomanassero/curator-centos
```
