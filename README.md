# grafana_pihole
Shell Script to get PiHole Data to Grafana/InfluxDB

Pi-Hole: https://pi-hole.net/
jq:  https://stedolan.github.io/jq/
A few requirements...

This was all done in Ubuntu 16.04.
You will need to have jq installed to parse the json sent from pihole.

Instructions. 

1. Create database pihole in influxdb
2. Install jq on Grafana/Influx server
3. Use pihole.sh (make sure to change IP addresses) on Grafana/Influx Server
4. chmod +x pihole.sh
5. Add to crontab (crontab -e:  * * * * * /path/to/scripts/pihole.sh 2>>&1 to Grafana/Influx Server
6. Add pretty pretty Grafana graphs/data



