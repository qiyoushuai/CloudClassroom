package com.sdjt.classroom.config.Interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
    @Resource
    private LoginIntercepter loginIntercepter;


    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(loginIntercepter).addPathPatterns("/page/**").excludePathPatterns("/page/login_add","/page/home_enrollCurr","/page/home_queryCurr","/page/buy_curr");

    }
}
