package com.xiong;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.xiong.dao")
public class CinemaServiceApplication9002 {
    public static void main(String[] args) {
        SpringApplication.run(CinemaServiceApplication9002.class, args);
    }
}
