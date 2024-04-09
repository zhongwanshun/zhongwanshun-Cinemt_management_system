package com.xiong.feign;

import com.xiong.pojo.Cinema;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@FeignClient(value = "wanshun-cinema-service", path = "/cinema")
public interface CinemaFeignService {
    //电影院列表
    @RequestMapping("/cinemaList")
    public List<Cinema> getAllCinemaByPage(@RequestBody Map<String, Object> hashMap);

    //count
    @RequestMapping("/getCinemaCount")
    public long getCinemaCount(@RequestBody Map<String, Object> hashMap);

    //根据电影ID查询对应的电影院信息
    @RequestMapping("/getCinemaAndMovieById/{id}")
    public Cinema getCinemaAndMovieById(@PathVariable("id") Integer id);
}
