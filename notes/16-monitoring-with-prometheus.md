## 16 - Monitoring with Prometheus

Prometheus is an open source monitoring system and time series database.
It is used for monitoring and alerting. In combination with Grafana it is a great tool to monitor your applications.
Prometheus is a great tool to monitor your Kubernetes cluster but it can also be used to monitor other applications.
It scrapes metrics from targets and stores them in a time series database.
Prometheus is a pull system. This means that the targets need to expose a /metrics endpoint.
You can also use exporters to expose metrics for targets that don't have a /metrics endpoint.
Prometheus has a component called Alertmanager. This component can be used to send alerts when a condition is met it can
alert you via email, slack, pagerduty, etc.

The metrics that Prometheus scrapes are stored in a time series database. This database is called TSDB.
You can query the TSDB with PromQL. PromQL is a query language that is used to query the TSDB.
You can add your own metrics by using the Prometheus client library. This library is available for many programming.
These libraries are used to expose metrics for your application. If your applicaiton had a /metrics endpoint you can add
the metrics to the /metrics endpoint. After that Prometheus can scrape the metrics from your application by adding the
url to its targets.
