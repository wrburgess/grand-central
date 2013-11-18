# Grand Central

## CTA Bus

### API Docs

CTA BusTracker API: http://www.transitchicago.com/riding_cta/how_to_guides/bustrackerlookup_stoplists.aspx 

### API Request

```
root_url = "http://www.ctabustracker.com/bustime/api/v1/getpredictions"
bus_key = "xxxxxxxxxxxxxxxxxxxxxxxxx"
bus_limit = "3"
stop_id = "8890"
request_url = "#{root_url}?key=#{@bus_key}&top=#{@bus_limit}&stpid=#{stop_id}"
```

### API Response

```
<?xml version='1.0'?>
<bustime-response>  
  <prd>
    <tmstmp>20130424 20:52</tmstmp>
    <typ>A</typ>
    <stpnm>Damen &amp; Wabansia</stpnm>
    <stpid>8930</stpid>
    <vid>1376</vid>   
    <dstp>6030</dstp>
    <rt>50</rt>
    <rtdir>NORTH</rtdir>
    <des>Ashland/Clark</des>
    <prdtm>20130424 20:59</prdtm> 
  </prd>
  <prd>
    ...
  </prd>
</bustime-response>
```

## CTA Train

### API Docs

CTA TrainTracker API: http://www.transitchicago.com/developers/ttdocs/default.aspx

### API Request

### API Response

## Divvy Bicycles

### API Docs

None

### API Request

```
GET http://divvybikes.com/stations/json
```

### API Response

```
{
  "executionTime":"2013-11-18 03:44:03 PM",
  "stationBeanList":[
    {
      "id":344,
      "stationName":"Wolcott Ave & Lawrence Ave",
      "availableDocks":11,
      "totalDocks":15,
      "latitude":41.968641,
      "longitude":-87.676335,
      "statusValue":"In Service",
      "statusKey":1,
      "availableBikes":4,
      "stAddress1":"Wolcott Ave & Lawrence Ave",
      "stAddress2":"",
      "city":"Chicago",
      "postalCode":"",
      "location":"",
      "altitude":"",
      "testStation":false,
      "lastCommunicationTime":null,
      "landMark":"026"
    }
  ]
}
```