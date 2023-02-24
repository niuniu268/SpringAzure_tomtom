package com.example.pojo;

import lombok.Data;

@Data
public class Address {

    private String matchConfidence;
    private String score;
    private Latitude position;
    private String viewport;
    private String address;
    private String type;
    private String id;

}
