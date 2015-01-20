<?php
    $curl = curl_init();
    curl_setopt($curl,CURLOPT_URL,"http://www.colourlovers.com/api/palettes/new");
    curl_setopt($curl,CURLOPT_HEADER,false);
    curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);
    $xml_string = curl_exec($curl);
    curl_close($curl);

    //header("Content-Type: text/xml; charset=utf-8");
    //echo $xml;

    $xml = simplexml_load_string($xml_string);
    $json = json_encode($xml);
    $array = json_decode($json,TRUE);
    echo $json;
?>