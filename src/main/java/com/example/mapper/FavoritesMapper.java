package com.example.mapper;

import com.example.pojo.Favorites;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface FavoritesMapper {
    @Select( "select * from favorites;" )
    List<Favorites> selectAll();
    @Insert( "insert into favorites values (null, #{start}, #{destination}, #{distance}, #{duration},#{way});  ")
    void insert( Favorites favorites);

    @Delete("delete from favorites where id = #{id}")
    void delete (@Param( "id" ) Integer id);

}
