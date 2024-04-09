package com.xiong.feign;

import com.xiong.pojo.Movie;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@FeignClient(value = "wanshun-movie-service", path = "/movie")
public interface MovieFeignService {
    //电影列表
    @RequestMapping("/movieList")
    public List<Movie> getAllMovieByPage(@RequestBody Map<String, Object> hashMap);

    //count
    @RequestMapping("/getMovieCount")
    public long getMovieCount(@RequestBody Map<String, Object> hashMap);

    //根据ID查询电影，并关联查询相关的电影院信息
    @RequestMapping("/getMovieAndCinemaById/{id}")
    public Movie getMovieAndCinemaById(@PathVariable("id") Integer id);

    //查询所有
    @RequestMapping("/list")
    public List<Movie> list();
}
