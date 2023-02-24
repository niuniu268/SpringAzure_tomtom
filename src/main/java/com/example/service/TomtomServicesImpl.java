package com.example.service;

import com.alibaba.fastjson.JSON;
import com.example.pojo.*;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;

@Service
public class TomtomServicesImpl {
    @Autowired
    private RestTemplate restTemplate;

    @Value( "${key}" )
    private String key ;



    public Favorites fillInFavoritesList(String start, String destination, String way) throws URISyntaxException {

        Map itinerary = itinerary( start, destination, way );

        Object routes = itinerary.get( "routes" );
        String s = JSON.toJSONString( routes );

        List <Routes> routes1 = JSON.parseArray( s, Routes.class );

        Routes routes2 = routes1.get( 0 );

        Travels summary = routes2.getSummary( );

        Favorites ff = new Favorites();

        ff.setStart( start );
        ff.setDestination( destination );
        ff.setWay( way );
        ff.setDistance( summary.getLengthInMeters() );
        ff.setDuration( summary.getTravelTimeInSeconds() );

        return ff;
    }

    public Map itinerary (String start, String destination, String way) throws URISyntaxException {

        String uri = "https://api.tomtom.com/routing/1/calculateRoute/"+start+":"+destination+"/json?language=en-US&instructionsType=text&travelMode="+way+"&key="+key;

        ResponseEntity <Map> entity = restTemplate.getForEntity( new URI( uri ), Map.class );


        return entity.getBody();
    }



    public String getLatitude(String address) throws URISyntaxException {


        String naddress = address.replaceAll( "\\s+", "%20" );


        String uri = "https://api.tomtom.com/search/2/geocode/"+naddress+"&countrySet=SWE.json?key="+key;

        ResponseEntity <Map> entity = restTemplate.getForEntity( new URI( uri ), Map.class );


        Map body = entity.getBody( );

        Object results = body.get( "results" );


        String s = JSON.toJSONString( results );

        List <Address> list = JSON.parseArray( s, Address.class );

        Address address1 = list.get( 0 );

        Latitude position = address1.getPosition( );


        return position.getLat()+","+position.getLon();

    }
}
