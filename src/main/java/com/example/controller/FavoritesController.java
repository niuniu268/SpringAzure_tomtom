package com.example.controller;

import com.example.pojo.Favorites;
import com.example.service.FavoritesServices;
import com.example.service.FavoritesServicesImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/favorites")
public class FavoritesController {
    @Autowired
    private TomtomController tomtomController;

    @Autowired
    private FavoritesServicesImpl favoritesServices;

    @GetMapping
    @ResponseBody
    public List<Favorites> selectAll(){
        return favoritesServices.selectAll();
    }

    @GetMapping("{no}")
    public void Insert(@PathVariable Integer no){

        Favorites[] fArray = tomtomController.fArray;


        favoritesServices.insert( fArray[no - 1] );


    }

    @DeleteMapping({"{id}"})
    public void deleteItem(@PathVariable Integer id){
        favoritesServices.delete( id );
    }



}
