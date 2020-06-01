package com.sdjt.classroom.controller;


import com.sdjt.classroom.config.WelcomePage;
import com.sdjt.classroom.dao.TeacherMapper;
import com.sdjt.classroom.model.*;
import com.sdjt.classroom.service.CurriculumService;
import com.sdjt.classroom.service.TeacherService;
import com.sdjt.classroom.service.UserService;
import com.sdjt.classroom.util.URLutil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/page")
public class PageSkipping {
    @Resource
    private CurriculumService curriculumService;
    @Resource
    private UserService userService;
    @Resource
    private TeacherService teacherService;

    //登录、注册页面
    @RequestMapping("/login_add")
    public String login_add(){
        return "login_add.html";
    }

    @RequestMapping("/test")
    public String test(){
        return "/test.html";
    }

    //管理员后台首页
    @RequestMapping("/page_manager")
    public String page_manager(){
        return "home/page_manager.html";
    }

    //教师后台首页
    @RequestMapping("/page_teac")
    public String page_teac(){
        return "home/page_teac.html";
    }

    //学生后台首页
    @RequestMapping("/page_stu")
    public String page_stu(){
        return "home/page_stu.html";
    }



    //个人管理页面
    @RequestMapping("/homePage_Personal")
    public String homePage_Personal(HttpSession session){
        //管理员进入后台时 将教师开课申请的数量存在session
        Integer count = curriculumService.getCurriculumCount(2);
        //管理员进入后台时 将教师资格申请的数量存在session
        Integer apply_count = teacherService.getApplicationCount(1);
        session.setAttribute("apply_count",apply_count);
        session.setAttribute("applyCourse_count",count);
        return "manager/man_homePage_Personal.html";
    };

    //个人信息页面
    @RequestMapping("/personal_information")
    public String personal_information(){
        return "manager/man_Personal_information.html";
    }

    //课程类别添加页面
    @RequestMapping("/classify_add")
    public String classify_add(){return "classify/classify_add.html";}

    //管理员页面中的用户列表页面
    @RequestMapping("/man_userList")
    public String man_userList(){return "manager/man_userList.html";}


    //课程类别操作页面（list 编辑页面）
    @RequestMapping("/classify_list")
    public String classify_list(){return "classify/classify_list.html";}


    //管理员界面获取员工详细信息  并获取到id对应用户的数据转发到页面
    @RequestMapping("/user_information")
    public String user_infomation(Integer id, HttpServletRequest req){
        User user = curriculumService.queryUserById(id);
        req.setAttribute("user",user);
        return "manager/user_information.html";
    }

    //管理员页面的教师审核
    @RequestMapping("/tea_approval")
    public String tea_approval(){
        return "manager/tea_approval.html";
    }

    //修改密码页面
    @RequestMapping("/pay")
    public String test_pay(){return "user/editPswd.html";}

    //用户教师资格申请
    @RequestMapping("/teacher_application")  //进入教师资格申请页面需要审核联系信息，如果没有联系信息则跳转到个人信息页面填写
    public String teacher_application(Integer id, HttpServletRequest request,HttpSession session){
        String relname = null;
        String email = null;
        String address = null;
        BigDecimal phone = null;
        Integer type = null;
        List<User>  userList= userService.getInfo(id);
        for(User user:userList){
            relname = user.getRelname();
            email = user.getEmail();
            address =user.getAddress();
            phone = user.getPhone();
            type = user.getType();
        }
        if(type ==2){
            session.setAttribute("user_type",2);
            return "redirect:teacher_application_notice_access";
        }else if(teacherService.getApplicationByIdAndState(id).size()>0){
            return "redirect:teacher_application_notice";
        }else if(relname == null ||email == null ||address == null ||phone == null ||
                relname.equals("") ||email.equals("") ||address.equals("") ){
            return "manager/man_Personal_information.html";
        }else {
            request.setAttribute("relname",relname);
            request.setAttribute("email",email);
            request.setAttribute("address",address);
            request.setAttribute("phone",phone);
            return "teacher/teacher_application.html";
        }

    }


    /*教师资格申请完成后跳转页面*/
    @RequestMapping("/teacher_application_notice")
    public String teacher_application_notice(){

        return "notice/teacher_application_notice.html";
    }
    /*教师资格申请成功页面*/
    @RequestMapping("/teacher_application_notice_access")
    public String teacher_application_notice_access(){
        return "notice/teacher_application_notice_access.html";
    }
    //管理员教师申请详细信息页面
    @RequestMapping("/teaApplication_info")
    public String teaApplication_info(Integer id,HttpServletRequest req){
        Teacher_application application = teacherService.getApplicationById(id);
        req.setAttribute("application_info",application);
        return "manager/teaApplication_info.html";
    }






    //教师端申请开课页面
    @RequestMapping("/apply_class")
    public String teacher_apply_class(){
        return "teacher/teacher_apply_class.html";
    }

    //教师查看申请课程记录
    @RequestMapping("/apply_class_record")
    public String apply_class_record(){
        return "teacher/apply_class_record.html";
    }

    //教师端我开设的课程
    @RequestMapping("/my_courses_offered")
    public String my_courses_offered(HttpSession session){
        Integer user_id = (Integer) session.getAttribute("user_id");
        List<Curriculum> curriculumList = teacherService.getCurriculumByTeaId(user_id);
        session.setAttribute("myCurriculums",curriculumList);
        return "teacher/my_courses_offered.html";
    }

    //管理员端开课审核页面
    @RequestMapping("/tea_auditCourse")
    public String tea_auditCourse(){
        return "manager/tea_auditCourse.html";
    }
    //管理员页面教师开课申请详细信息页面
    @RequestMapping("/auditCourseInfo")
    public String auditCourseInfo(Integer id,HttpServletRequest req,String  type){
        Curriculum curriculum = curriculumService.getCurriculumById(id);

        //根据课程的分类id 查询到相应的分类名称存在课程实体类中以便前台显示（说真的，表建不好就要多写下面这么多东西、、、一定要好好学sql啊！）
        if(curriculum.getClassify()!= null && !curriculum.getClassify().equals("")){
            String classify_id = curriculum.getClassify();
            Integer classify_id1 = Integer.parseInt(classify_id);
            Classify classifies = curriculumService.queryClassify_ById(classify_id1);
            curriculum.setClassify(classifies.getTitle());
        }

        if(curriculum.getClassify_child()!= null && !curriculum.getClassify_child().equals("")){
            String classify_child_id = curriculum.getClassify_child();
            if(classify_child_id != null && !classify_child_id.equals("")){
                Integer classify_childId= Integer.parseInt(classify_child_id);
                Classify classifies1 = curriculumService.queryClassify_ById(classify_childId);
                    curriculum.setClassify_child(classifies1.getTitle());

            }
        }
        req.setAttribute("curriculum",curriculum);
        if(type != null && type.equals("course_list")){
            return "manager/CourseInfo.html";
        }else{
            return "manager/tea_auditCourseInfo.html";
        }

    }

//课程章节管理
    @RequestMapping("/class_chapter")
    public String class_chapter(String curr_id,HttpSession session,String cla_nm){
        Integer curr_id1 = null;
        if(curr_id != null && !curr_id.equals("")){
             curr_id1 = Integer.parseInt(curr_id);
        }
        session.setAttribute("cla_nm",cla_nm);
        session.setAttribute("curr_id",curr_id1);
        return "teacher/class_chapter.html";
    }

    //章节信息iframe
    @RequestMapping("/iframe_class_chapter")
    public String iframe_class_chapter(Integer id,HttpServletRequest request){
        Chapter chapters = teacherService.getChapterById(id);
        chapters.setUrl(URLutil.url_change(chapters.getUrl()));
        request.setAttribute("chapter",chapters);
        return "teacher/iframe_class_chapter.html";
    }

    //课程详细信息页面
    @RequestMapping("/curriculum_info")
    public String curriculum_info(Integer curr_id,HttpSession session){
        Curriculum curriculum = curriculumService.getCurriculumById(curr_id);
        //根据课程的分类id 查询到相应的分类名称存在课程实体类中以便前台显示（说真的，表建不好就要多写下面这么多东西、、、一定要好好学sql啊！）
        if (curriculum !=null){
            //下面这两大段是将课程里面章节ID对应的章节名称查找出来 。。。由于前期经验不足不会用多表查询，现在会用了也懒得改了 就这样吧
            curriculum.setCover_url(URLutil.url_change(curriculum.getCover_url()));
            String classify_id = curriculum.getClassify();
            if(classify_id != null && !classify_id.equals("")){
                Integer classify_id1 = Integer.parseInt(classify_id);
                Classify classifies = curriculumService.queryClassify_ById(classify_id1);
                curriculum.setClassify(classifies.getTitle());
            }
            String classify_child_id = curriculum.getClassify_child();
            if(classify_child_id != null && !classify_child_id.equals("")){
                Integer classify_childId= Integer.parseInt(classify_child_id);
                Classify classifies1 = curriculumService.queryClassify_ById(classify_childId);
                curriculum.setClassify_child(classifies1.getTitle());
            }
            //查询是否有课程章节
            List<Chapter> chapters = teacherService.queryChapter_childByCurriId(curr_id);
            //查询是否有课程章节没有上传视频
            List<Chapter> ChapterUrlIsNulll = teacherService.queryChapterUrlIsNulll(curr_id);
            Integer ChapterUrlIsNulllCount = ChapterUrlIsNulll.size();

            session.setAttribute("curriculum",curriculum);
            session.setAttribute("ChapterUrlIsNulllCount",ChapterUrlIsNulllCount);
            session.setAttribute("chapterSize",chapters.size());
        }


        return "teacher/curriculum_info.html";
    }

    //”我开设的课程“空白页面
    @RequestMapping("/curriculum_notice")
    public String curriculum_notice(){
        return "notice/curriculum_notice.html";
    }

    //课程报名页面
    @RequestMapping("/home_enrollCurr")
    public String home_enrollCurr(Integer curr_id,HttpSession session){
        boolean isMyCourse = false;
        Integer user_id = (Integer) session.getAttribute("user_id");
        if(user_id != null){
            List<Course_Stu> course_stus = userService.getAllCourseIdByStuId(user_id);
            for(Course_Stu course_stu:course_stus){
                if (course_stu.getCurr_id().equals(curr_id)) {
                    isMyCourse = true;
                    break;
                }
            }
        }

        Curriculum curriculum = curriculumService.getCurriculumById(curr_id);
        curriculum.setCover_url(URLutil.url_change(curriculum.getCover_url()));
        session.setAttribute("curr",curriculum);
        session.setAttribute("isMyCourse",isMyCourse);
        return "home_enrollCurr.html";
    }

    //首页面查询课程功能
    @RequestMapping("/home_queryCurr")
    public String home_queryCurr(String curr_name,Integer classify_id,HttpSession session){
        List<Curriculum> curriculumList = curriculumService.homePage_queryCurr(curr_name, classify_id);
        List<Curriculum> homePageCurrFormat = new ArrayList<>();
        for(Curriculum curr:curriculumList){
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
        session.setAttribute("homePageCurr",homePageCurrFormat);
        session.setAttribute("curr_num",homePageCurrFormat.size());
        return "home_queryCurr.html";
    }

    //管理员：课程列表页面
    @RequestMapping("/course_List")
    public String course_List(){
        return "manager/course_List.html";
    }

    //课程报名时支付页面
    @RequestMapping("/buy_curr")
    public String buy_curr(Integer curr_id,HttpSession session){
        //获得课程购买记录的最大ID
        Integer order_id = 1000000001;
        Integer max_order_id = userService.getOrderMaxId();
        if(max_order_id != null){
            order_id = max_order_id+1;
        }
        List<User> user = userService.getInfo((Integer) session.getAttribute("user_id"));
        for(User user1:user){
            if(user1.getMoney()!= null && user1.getMoney() != 0.00 ){
                DecimalFormat df = new DecimalFormat("########0.00");
                session.setAttribute("user_money",df.format(user1.getMoney()));
            }else{
                session.setAttribute("user_money","0.00");
            }
        }

        Curriculum curriculum = curriculumService.getCurriculumById(curr_id);
        if(curriculum != null && curriculum.getCover_url()!=null){
            curriculum.setCover_url(URLutil.url_change(curriculum.getCover_url()));
        }

        session.setAttribute("curr",curriculum);
        session.setAttribute("order_id",order_id);
        return "user/buy_curr.html";
    }


    //课程学习页面
    @RequestMapping("curr_learning")
    public String curr_learning(Integer curr_id,HttpSession session){
        //先判断用户是否有报名此课程 如果没有返回首页面
        Integer user_id = (Integer)session.getAttribute("user_id");
        Course_Stu course_stu = userService.getCourse_StuByUserIdAndCurrId(user_id,curr_id);
        if(course_stu == null){
            return "redirect:/";
        }
        List<Chapter> chapters = curriculumService.getChaptersByCurrId(curr_id);
        List<Chapter> new_chapters = new ArrayList<>();
       /* UserController.addCurrPopularity(curr_id); //每当进入课程学习页面时为此课程热度+1*/
        for(Chapter cha:chapters){
            cha.setUrl(URLutil.url_change(cha.getUrl()));
            new_chapters.add(cha);
        }
        session.setAttribute("thisCurrChapter",new_chapters);
        session.setAttribute("this_currId",curr_id);
        return "curr_learning.html";
    }


    //我参加的课程页面
    @RequestMapping("/courses_attended")
    public String courses_attended(HttpSession session,String type){
        Integer charge = null;
        if(type != null){
            if(type.equals("收费")){
                charge = 1;
            }else if(type.equals("免费")){
                charge=2;
            }
        }

        Integer user_id= (Integer)session.getAttribute("user_id");
        List<Curriculum> curriculumList = userService.getMyCourses(user_id,charge);
        List<Curriculum> curriculumList1 = new ArrayList<>();
        for(Curriculum curr:curriculumList){
            curr.setCover_url(URLutil.url_change(curr.getCover_url()));
            String title = curriculumService.queryClassify_title(Integer.parseInt(curr.getClassify()));
            String title_child = null;
            if (curr.getClassify_child() != null && !curr.getClassify_child().equals("")){
                title_child = curriculumService.queryClassify_title(Integer.parseInt(curr.getClassify_child()));
            }else{
                title_child = "null";
            }

            curr.setClassify(title);
            curr.setClassify_child(title_child);
            curriculumList1.add(curr);
        }
        session.setAttribute("myCurrs",curriculumList1);
        session.setAttribute("curr_num",curriculumList1.size());
        if(charge == null){
            charge =0;
        }
        session.setAttribute("curr_title_type",charge);
        return "user/courses_attended.html";

    }

    //付费课程购买记录页面
    @RequestMapping("/courses_buy_record")
    public String courses_buy_record(){
        return "user/courses_buy_record.html";
    }


    //管理员模块网站首页轮播图管理页面
    @RequestMapping("/homePage_carousel_manager")
    public String homePage_carousel_manager(){
        return "manager/homePage_carousel_manager.html";
    }

    //通知读取页面iframe
    @RequestMapping("/readNotice")
    public String readNotice(Integer notice_id,Integer type,HttpSession session){
        Notice notice = userService.seeNotice(notice_id);

        if(type == 1){
            userService.changeNoticeType(notice_id);
        }
       session.setAttribute("notice",notice);
        return "notice/readNotice.html";
    }

    //发送信息页面iframe
    @RequestMapping("/sendNotice")
    public String sendNotice(Integer notice_id,Integer type,HttpSession session){
        return "notice/sendNotice.html";
    }

    //回复信息页面
    @RequestMapping("resendNotice")
    public String resendNotice(Integer send_user,String send_name,String send_username,HttpServletRequest req){
        req.setAttribute("send_user",send_user);
        req.setAttribute("send_name",send_name);
        req.setAttribute("send_username",send_username);

        return "notice/resendNotice.html";
    }


    //管理员页面添加网站首页轮播图
    @RequestMapping("/addCarousel")
    public String addCarousel(HttpSession session){
            session.setAttribute("carousel",0);
        return "manager/addCarousel.html";
    }



    //管理员页面添加网站首页轮播图
    @RequestMapping("/addCarousel1")
    @ResponseBody
    public String addCarousel1(Carousel carousel,HttpSession session){
        if(carousel.getImg_url() != null && carousel.getTitle() !=null && carousel.getMessage()!= null) {
            carousel.setImg_url("/resources"+URLutil.url_change(carousel.getImg_url()));
            session.setAttribute("carousel", carousel);
        }
        return "/page/addCarousel2";
    }

    //管理员页面添加网站首页轮播图
    @RequestMapping("/addCarousel2")
    public String addCarousel2(){
        return "manager/addCarousel.html";
    }



    //管理员界面从课程中选择添加网站首页轮播图内容
    @RequestMapping("/chooseCurrToCarousel")
    public String chooseCurrToCarousel(){
        return "manager/chooseCurrToCarousel.html";
    }
}
