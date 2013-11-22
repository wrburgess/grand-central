# Grand Central

## Widgets

* CTA Bus:       1, stop_id(s)
* CTA Train:     2, stop_id(s)
* Divvy Bicycle: 3, station_id(s)
* Weather:       4, zipcode(s)

## Zones

* widget_id: integer
* refresh_interval: integer
* theme_id: integer
* animation_id: integer
* sort: integer

## Stories

* User can create account
* User can login
* User can signout
* User can retrieve password

* User can create dashboard
* User can edit dashboard
* User can add a zone
* User can add a widget to a zone
* User can edit a widget settings to a zone
* User can make a dashboard portrait or landscape
* User can preview dashboard
* User can delete dashboard
* Dashboard can have one or many zones
* Zone can host one or many widgets
* Zone can refresh at designated intervals
* Zone can have one or many themes
* Zone can transition with one animation

## CTA Bus

### API Docs

CTA BusTracker API: http://www.transitchicago.com/riding_cta/how_to_guides/bustrackerlookup_stoplists.aspx 

### API Request

```
root_url = "http://www.ctabustracker.com/bustime/api/v1/getpredictions"
api_key = "xxxxxxxxxxxxxxxxxxxxxxxxx"
limit = "3"
stop_id = "8890"
request_url = "#{root_url}?key=#{api_key}&top=#{limit}&stpid=#{stop_id}"
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

```
api_key = "52953f8cb3d64bbc83128033e8895bc9"
limit = "3"
stop_id = "1"
@request_url = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=#{api_key}&max=#{limit}&stpid=#{stop_id}"

```

### API Response

```
<?xml version="1.0" encoding="utf-8"?>
<ctatt>
  <tmst>20130427 15:17:19</tmst>
  <errCd>0</errCd>
  <errNm />
  <eta>
    <staId>40590</staId>
    <stpId>30115</stpId>
    <staNm>Damen</staNm>
    <stpDe>Service toward O'Hare</stpDe>
    <rn>115</rn>
    <rt>Blue</rt>
    <destSt>30171</destSt>
    <destNm>O'Hare</destNm>
    <trDr>1</trDr>
    <prdt>20130427 15:16:29</prdt>
    <arrT>20130427 15:17:29</arrT>
    <isApp>1</isApp>
    <isSch>0</isSch>
    <isDly>0</isDly>
    <isFlt>0</isFlt>
    <flags />
  </eta>
  <eta>
   . . .
  </eta>
</ctatt>
```

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

## Metra

## API Documentation

Unofficial API: http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/up-n/schedule.full.html

## API Request

## API Response

## OpenWeatherMap

### API Documentation

* [Home](http://openweathermap.org/api)  
* [JSON Definition](http://bugs.openweathermap.org/projects/api/wiki/Weather_Data)  
* [Weather Codes](http://bugs.openweathermap.org/projects/api/wiki/Weather_Condition_Codes)  

### API Request

```
GET http://api.openweathermap.org/data/2.5/weather?id=1234
```

### API Response

```
{
   "id":88319,
   "dt":1345284000,
   "name":"Benghazi",
   "coord":{
      "lat":32.12,
      "lon":20.07
   },
   "main":{
      "temp":306.15,
      "pressure":1013,
      "humidity":44,
      "temp_min":306,
      "temp_max":306
   },
   "wind":{
      "speed":1,
      "deg":-7
   },
   "weather":[
      {
         "id":520,
         "main":"Rain",
         "description":"light intensity shower rain",
         "icon":"09d"
      },
      {
         "id":500,
         "main":"Rain",
         "description":"light rain",
         "icon":"10d"
      },
      {
         "id":701,
         "main":"Mist",
         "description":"mist",
         "icon":"50d"
      }
   ],
   "clouds":{
      "all":90
   },
   "rain":{
      "3h":3
   }
}
```

## Dashboard Settings

### Document Spec

### Document Example

```

{
   "user_id":8,
   "dashboard":{
      "id":1516,
      "theme_id":13,
      "logo_url":"http://grandcentral.io/assets/logo.png",
      "zones":[
         {
            "id":1,
            "sort":1,
            "module_id":1,
            "module_settings":[
               {
                  "stop_id":"7"
               },
               {
                  "stop_id":"15"
               }
            ],
            "theme_id":13,
            "refresh_interval":120,
            "animation_id":1
         },
         {
            "id":2,
            "sort":2,
            "module_id":1,
            "module_settings":[
               {
                  "stop_id":"7"
               },
               {
                  "stop_id":"15"
               }
            ],
            "theme_id":13,
            "refresh_interval":60,
            "animation_type_id":1
         },
         {
            "id":3,
            "sort":3,
            "module_id":2,
            "module_settings":[
               {
                  "stop_id":"1661"
               }
            ],
            "theme_id":13,
            "refresh_interval":30,
            "animation_type_id":1
         },
         {
            "id":4,
            "sort":4,
            "module_id":5,
            "module_settings":[
               {
                  "station_id":"7"
               },
               {
                  "station_id":"15"
               }
            ],
            "theme_id":13,
            "refresh_interval":60,
            "animation_type_id":1
         },
         {
            "id":5,
            "sort":5,
            "widget_id":7,
            "module_settings":[
               {
                  "zipcode":"60640"
               }
            ],
            "theme_id":13,
            "refresh_interval":120,
            "animation_type_id":1
         }
      ]
   }
}
```