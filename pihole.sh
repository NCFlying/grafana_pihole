    #!/bin/bash

    get_domainsblocked(){
        #rawjson = `curl http://192.168.10.199/admin/api.php | jq '.'`
        rawjson=$(curl http://192.168.20.199/admin/api.php | jq '.domains_being_blocked')
        domainsblocked=$(echo $rawjson | sed -e 's/\"//g' -e 's/\,//g')
        echo $domainsblocked
        curl -i -XPOST 'http://localhost:8086/write?db=pihole' --data-binary "ad_data,host=pihole,site=home domainsblocked=$domainsblocked"

    }

    get_dnsqueriestoday(){
        #rawjson = `curl http://192.168.10.199/admin/api.php | jq '.'`
        rawjson=$(curl http://192.168.20.199/admin/api.php | jq '.dns_queries_today')
        dnsqueriestoday=$(echo $rawjson | sed -e 's/\"//g' -e 's/\,//g')
        echo $dnsqueriestoday
        curl -i -XPOST 'http://localhost:8086/write?db=pihole' --data-binary "ad_data,host=pihole,site=home dnsqueriestoday=$dnsqueriestoday"
    }
    get_adsblockedtoday(){
        #rawjson = `curl http://192.168.10.199/admin/api.php | jq '.'`
        rawjson=$(curl http://192.168.20.199/admin/api.php | jq '.ads_blocked_today')
        adsblockedtoday=$(echo $rawjson | sed -e 's/\"//g' -e 's/\,//g')
        echo $adsblockedtoday
        curl -i -XPOST 'http://localhost:8086/write?db=pihole' --data-binary "ad_data,host=pihole,site=home adsblockedtoday=$adsblockedtoday"
    }
    get_adspercentagetoday(){
        #rawjson = `curl http://192.168.10.199/admin/api.php | jq '.'`
        rawjson=$(curl http://192.168.20.199/admin/api.php | jq '.ads_percentage_today')
        adspercentagetoday=$(echo $rawjson | sed -e 's/\"//g' -e 's/\,//g')
        echo $adspercentagetoday
        curl -i -XPOST 'http://localhost:8086/write?db=pihole' --data-binary "ad_data,host=pihole,site=home adspercentagetoday=$adspercentagetoday"
    }
    #Prepare to start the loop and warn the user
    echo "Press [CTRL+C] to stop..."
    get_domainsblocked
    get_dnsqueriestoday
    get_adsblockedtoday
    get_adspercentagetoday