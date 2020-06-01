package com.sdjt.classroom.config;

import com.sdjt.classroom.model.Classify;
import com.sdjt.classroom.model.Classify_format;
import com.sdjt.classroom.model.Curriculum;
import com.sdjt.classroom.model.User;
import com.sdjt.classroom.service.CurriculumService;
import com.sdjt.classroom.service.TeacherService;
import com.sdjt.classroom.util.URLutil;
import org.beetl.core.GroupTemplate;
import org.beetl.core.resource.ClasspathResourceLoader;
import org.beetl.ext.spring.BeetlGroupUtilConfiguration;
import org.beetl.ext.spring.BeetlSpringViewResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * description: MyBeetlConfig <br>
 * date: 2019/11/21 17:44 <br>
 * author: qiyoushuai <br>
 * version: 1.0 <br>
 */
@Configuration
public class MyBeetlConfig {
    @Autowired
    private BeetlProperties beetlProperties;
    @Resource
    private CurriculumService curriculumService;
    @Resource
    private TeacherService teacherService;
    @Value("${spring.mvc.view.prefix}")
    private String prefix;
    /**
     * beetl的配置
     */
    @Bean(name="beetlConfig")
    public BeetlGroupUtilConfiguration getBeetlGroupUtilConfiguration() {
        BeetlGroupUtilConfiguration beetlGroupUtilConfiguration = new BeetlGroupUtilConfiguration();
        //获取Spring Boot 的类加载器ClassLoader
        //ClassLoader类的介绍可以总结出这个类的作用就是根据一个指定的类的全限定名,
        // 找到对应的Class字节码文件,然后加载它转化成一个java.lang.Class类的一个实例.
        //java的类加载机制（jvm规范）是委托模型，简单的说，如果一个类加载器想要加载一个类，首先它会委托给它的parent去加载，
        // 如果它的所有parent都没有成功的加载那么它才会自己亲自来，有点儿像儿子使唤老子的感觉。
        ClassLoader loader = Thread.currentThread().getContextClassLoader();
        if(loader==null){
            loader = MyBeetlConfig.class.getClassLoader();
        }
        System.out.println("prefix:"+prefix);
        ClasspathResourceLoader cploder = new ClasspathResourceLoader(loader, prefix);
        beetlGroupUtilConfiguration.setResourceLoader(cploder);

        //设置自定义的配置，可以覆盖默认配置
        beetlGroupUtilConfiguration.setConfigProperties(beetlProperties.getProperties());
        beetlGroupUtilConfiguration.init();
        return beetlGroupUtilConfiguration;
    }
    /**
     * beetl的视图解析器
     */
    @Bean
    public BeetlSpringViewResolver getBeetlSpringViewResolver(@Qualifier("beetlConfig") BeetlGroupUtilConfiguration beetlGroupUtilConfiguration) {
        BeetlSpringViewResolver beetlSpringViewResolver = new BeetlSpringViewResolver();
        beetlSpringViewResolver.setContentType("text/html;charset=UTF-8");
        beetlSpringViewResolver.setOrder(0);
        beetlSpringViewResolver.setConfig(beetlGroupUtilConfiguration);
        return beetlSpringViewResolver;
    }

   /* *//**
     * beetl的全局共享变量：此为云学堂的课程分类菜单中的数据，以便页面加载时能够读取到
     * 将云学堂首页需要用到的课程list 和教师list 存在全局变量中
     * @param beetlGroupUtilConfiguration
     * @return
     *//*
    @Bean
    public GroupTemplate getGroupTemplate(BeetlGroupUtilConfiguration beetlGroupUtilConfiguration){
        GroupTemplate gt = beetlGroupUtilConfiguration.getGroupTemplate();
        //课程分类菜单
        List<Classify_format> classify_formats =new ArrayList<>();
        List<Classify> classifies = curriculumService.classifyList_new();
        for(Classify cla:classifies){
            if(cla.getField() != null) {
                Classify_format format = new Classify_format(cla.getId(), cla.getTitle(), Integer.parseInt(cla.getField()));
                classify_formats.add(format);
            }
        }
        //课程信息
        List<Curriculum> homePageCurr = curriculumService.homePage_getCruuiculum();
        List<Curriculum> homePageCurrFormat = new ArrayList<>();
        for(Curriculum curr:homePageCurr){
            curr.setCover_url(URLutil.url_change(curr.getCover_url()));
            String title = curriculumService.queryClassify_title(Integer.parseInt(curr.getClassify()));
            String title_child = null;
            if (curr.getClassify_child() != null && !curr.getClassify_child().equals("")){
                 title_child = curriculumService.queryClassify_title(Integer.parseInt(curr.getClassify_child()));
            }

            curr.setClassify(title);
            curr.setClassify_child(title_child);
            homePageCurrFormat.add(curr);
        }
        //教师信息
       List<User> teacherList = teacherService.homePage_teacher();
        List<User> homePageTeac = new ArrayList<>();
        for(User user:teacherList){
            user.setPurikura(URLutil.url_change(user.getPurikura()));
            homePageTeac.add(user);
        }
        Map<String,Object> map = new HashMap<>();
        map.put("classifies",classify_formats);
        map.put("homePageCurr",homePageCurrFormat);
        map.put("homePageTeac",homePageTeac);
        gt.setSharedVars(map);
        return gt;
    }

*/

}
