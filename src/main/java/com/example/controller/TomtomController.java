package com.example.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.example.pojo.Address;
import com.example.pojo.Favorites;
import com.example.pojo.Latitude;
import com.example.service.TomtomServicesImpl;
import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;

@RestController
@RequestMapping("/search")
public class TomtomController {
    @Autowired
    private TomtomServicesImpl tomtomServices;

    public Favorites[] fArray = new Favorites[3];


    @GetMapping("/{start}/{destination}/{way}")
    @ResponseBody
    public Map[] searchPoint(@PathVariable String start, @PathVariable String destination, @PathVariable String way ) throws URISyntaxException {

        Map[] arraylist = new Map[3];


        String latitude = tomtomServices.getLatitude( start );

        String latitude1 = tomtomServices.getLatitude( destination );

        Map pedestrian = tomtomServices.itinerary( latitude, latitude1, "pedestrian" );

        arraylist[0] = pedestrian;
        fArray[0] = tomtomServices.fillInFavoritesList( start, destination, "pedestrian" );

        if (!Objects.equals( way, "pedestrian" )){

            Map car = tomtomServices.itinerary( latitude, latitude1, "car" );

            arraylist[1] = car;
            fArray[1] = tomtomServices.fillInFavoritesList( start, destination, "car" );

        }

        for (int i = 0; i < fArray.length; i++) {

            System.out.println(fArray[i] );

        }


        return arraylist;


    }


}
