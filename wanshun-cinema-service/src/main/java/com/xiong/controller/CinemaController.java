package com.xiong.controller;

import com.xiong.pojo.Cinema;
import com.xiong.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/cinema")
public class CinemaController {
    @Autowired
    private CinemaService cinemaService;

    //电影院列表
    @RequestMapping("/cinemaList")
    public List<Cinema> getAllCinemaByPage(@RequestBody Map<String, Object> hashMap) {
        System.out.println("\n进入getAllCinemaByPage控制器");
        return cinemaService.getByPage((Integer) hashMap.get("currentPage"), (Integer) hashMap.get("pageSize"), (String) hashMap.get("name"));
    }

    //count
    @RequestMapping("/getCinemaCount")
    public long getCinemaCount(@RequestBody Map<String, Object> hashMap) {
        System.out.println("\n进入getCinemaCount控制器");
        return cinemaService.getCount((String) hashMap.get("name"));
    }

    //根据ID查询电影院，并关联查询相关的电影信息
    @RequestMapping("/getCinemaAndMovieById/{id}")
    public Cinema getCinemaAndMovieById(@PathVariable("id") Integer id) {
        System.out.println("\n进入getCinemaAndMovieById控制器，获取到的值：" + id);
        return cinemaService.getCinemaAndMovieById(id);
    }
}
