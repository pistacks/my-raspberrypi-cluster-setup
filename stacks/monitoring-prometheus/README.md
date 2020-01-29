## Deploy

```
$ docker stack deploy -c docker-compose.yml monitoring
```

## Usage

Access to Prometheus:

```
http://prometheus.${DOMAIN}
```

Sending metrics to Pushgateway:

```
echo "some_metric 3.14" | curl -iv --data-binary @- http://admin:admin@pushgateway.${DOMAIN}/metrics/job/some_job
```
