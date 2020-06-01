package com.sdjt.classroom.config;

import com.sdjt.classroom.dao.WebMapper;
import com.sdjt.classroom.model.Classify;
import com.sdjt.classroom.model.Classify_format;
import com.sdjt.classroom.model.Curriculum;
import com.sdjt.classroom.model.User;
import com.sdjt.classroom.service.CurriculumService;
import com.sdjt.classroom.service.TeacherService;
import com.sdjt.classroom.util.URLutil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
public class WelcomePage {
    @Resource
    private CurriculumService curriculumService;
    @Resource
    private TeacherService teacherService;
    @Resource
    private WebMapper webMapper;
    @RequestMapping("/")
    public String login( HttpSession session,HttpServletRequest request) {


        Boolean visit_web =(Boolean) session.getAttribute("visit");
        if(visit_web == null || !visit_web){
            webMapper.addWebVisits();
            session.setAttribute("visit",true);
        }
        //课程分类菜单
        List<Classify_format> classify_formats =new ArrayList<>();
        List<Classify> classifies = curriculumService.classifyList_new();
        for(Classify cla:classifies){
            if(cla.getField() != null) {
                Classify_format format = new Classify_format(cla.getId(), cla.getTitle(), Integer.parseInt(cla.getField()));
                classify_formats.add(format);
            }
        }
        //精品课程信息
        List<Curriculum> homePageCurr = curriculumService.homePage_getCruuiculum();
        List<Curriculum> homePageCurrFormat = Curriculum_format(homePageCurr);
        //免费课程信息 及免费课程排行
        List<Curriculum> homePageFreeCurr = Curriculum_format(curriculumService.homePage_freeCurr());
        List<Curriculum> homePageFreeCurr_rank = Curriculum_format(curriculumService.homePage_freeCurr_rank());
        //付费课程信息及付费课程排行
        List<Curriculum> homePageNoFreeCurr = Curriculum_format(curriculumService.homePage_noFreeCurr());
        List<Curriculum> homePageNoFreeCurr_rank = Curriculum_format(curriculumService.homePage_noFreeCurr_rank());
        //教师信息
        List<User> teacherList = teacherService.homePage_teacher();
        List<User> homePageTeac = new ArrayList<>();
        for(User user:teacherList){
            user.setPurikura(URLutil.url_change(user.getPurikura()));
            homePageTeac.add(user);
        }
        session.setMaxInactiveInterval(60*60*48); //设置sision的最大时长为48小时
        session.setAttribute("classifies",classify_formats); //课程分类
        session.setAttribute("homePageCurr",homePageCurrFormat);  //精品课程
        session.setAttribute("homePageTeac",homePageTeac);  //教师排行
        session.setAttribute("homePageFreeCurr",homePageFreeCurr);  //免费课程
        session.setAttribute("homePageFreeCurr_rank",homePageFreeCurr_rank);  //免费课程排行
        session.setAttribute("homePageNoFreeCurr",homePageNoFreeCurr);  //付费课程
        session.setAttribute("homePageNoFreeCurr_rank",homePageNoFreeCurr_rank);  //付费课程排行

     /*   String message = (String) request.getAttribute("notLogin");
        if(message != null && !message.equals("")){
            request.setAttribute("notLogin","notLogin");
        }
        */
        return "homePage.html";
    }


    //工具方法（将课程中的url地址转换成前台可读取的虚拟路径，将课程类别通过查询将类别的id转换成类别名称）
     public List<Curriculum> Curriculum_format(List<Curriculum> homePageCurr){
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
        return homePageCurrFormat;
    }
}
