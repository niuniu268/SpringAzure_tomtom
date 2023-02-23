package com.example.service;

import com.example.mapper.FavoritesMapper;
import com.example.pojo.Favorites;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.relational.core.sql.In;
import org.springframework.stereotype.Service;

import java.util.List;

public interface FavoritesServices {

    List<Favorites> selectAll();

    Boolean insert (Favorites favorites);

    Boolean delete (Integer id);


}
