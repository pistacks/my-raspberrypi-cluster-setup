## Usage

Place scripts from [telegraf/scripts/](https://github.com/pistacks/my-raspberrypi-cluster-setup/tree/master/stacks/monitoring-influxdb/telegraf/scripts) under the NFS path `/opt/nfs/volumes/telegraf/scripts/` or change the `docker-compose.yml` to suit your needs

Replace the influxdb host ip from [telegraf.conf](https://github.com/pistacks/my-raspberrypi-cluster-setup/blob/master/stacks/monitoring-influxdb/telegraf/configs/telegraf.conf#L65-L70) with your ip or use the name `influxdb` (i got some weird resolution issues)
