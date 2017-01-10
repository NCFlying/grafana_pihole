# grafana_pihole
Shell Script to get PiHole Data to Grafana/InfluxDB

Pi-Hole: https://pi-hole.net/
jq:  https://stedolan.github.io/jq/
A few requirements...

This was all done in Ubuntu 16.04.
You will need to have jq installed to parse the json sent from pihole.

Instructions. 

1. Install jq
2. Use pihole.sh (make sure to change IP addresses)
3. chmod +x pihole.sh
4. Add to crontab (crontab -e:  * * * * * /path/to/scripts/pihole.sh 2>>&1



