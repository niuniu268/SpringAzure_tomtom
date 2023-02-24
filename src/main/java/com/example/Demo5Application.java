package com.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.client.OkHttp3ClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
@MapperScan("com.example.mapper")
@EnableWebMvc
@SpringBootApplication
public class Demo5Application {

    public static void main (String[] args) {
        SpringApplication.run( Demo5Application.class, args );
    }

    @Bean
    public RestTemplate restTemplate(){

        return new RestTemplate( new OkHttp3ClientHttpRequestFactory(  ) );
    }

}
