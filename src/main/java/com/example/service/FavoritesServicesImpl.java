package com.example.service;

import com.example.mapper.FavoritesMapper;
import com.example.pojo.Favorites;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FavoritesServicesImpl implements FavoritesServices{
    @Autowired
    private FavoritesMapper favoritesMapper;
    @Override
    public List <Favorites> selectAll () {
        return favoritesMapper.selectAll();
    }

    @Override
    public Boolean insert (Favorites favorites) {

        favoritesMapper.insert( favorites );

        return true;
    }

    @Override
    public Boolean delete (Integer id) {
        favoritesMapper.delete( id );

        return true;
    }
}
