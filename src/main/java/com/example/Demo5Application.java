package com.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
@MapperScan("com.example.mapper")
@EnableWebMvc
@SpringBootApplication
public class Demo5Application {

    public static void main (String[] args) {
        SpringApplication.run( Demo5Application.class, args );
    }

}
