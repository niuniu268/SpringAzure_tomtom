package com.example.pojo;

import lombok.Data;

@Data
public class Travels {

    private String lengthInMeters;
    private String travelTimeInSeconds;
    private String trafficDelayInSeconds;
    private String trafficLengthInMeters;
    private String departureTime;
    private String arrivalTime;
}
