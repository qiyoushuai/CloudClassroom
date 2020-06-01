package com.sdjt.classroom.config;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Component
public class ApplicationConfig implements WebMvcConfigurer {

    /**
     * 配置静态资源 访问系统文件中的资源
     * @param registry
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("file:/D:/work/CloudClassroom/src/main/webapp/repository/");
        WebMvcConfigurer.super.addResourceHandlers(registry);
    }

}
