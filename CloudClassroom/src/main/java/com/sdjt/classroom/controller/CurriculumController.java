package com.sdjt.classroom.controller;

import com.sdjt.classroom.dao.RecordMapper;
import com.sdjt.classroom.dao.WebMapper;
import com.sdjt.classroom.model.*;
import com.sdjt.classroom.service.*;
import com.sdjt.classroom.util.NUMUtil;
import com.sdjt.classroom.util.URLutil;
import org.apache.commons.lang3.StringUtils;
import org.beetl.core.misc.NumberUtil;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import javax.annotation.Resource;
import javax.crypto.interfaces.PBEKey;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/curr")
@Transactional(rollbackFor = Exception.class)
public class CurriculumController {
    @Resource
    private WebService webService;
    @Resource
    private CurriculumService curriculumService ;
    @Resource
    private TeacherService teacherService;
    @Resource
    private NoticeService noticeService;
    @Resource
    private UserService userService;
    @Resource
    private RecordService recordService;
    //获取所有课程类别信息
    @RequestMapping("/classify_record_list")
    @ResponseBody
    public Map<String ,Object> classify_list(Integer limit,Integer page){
        Map<String ,Object> map =new HashMap<>();
        List<Classify_record> records = curriculumService.get_classifyRecord(page,limit);
        Integer record_num = curriculumService.getRecord_num();
        map.put("code",0);
        map.put("msg","");
        map.put("count",record_num);
        map.put("data",records);

        return  map;
    }

    //查询课程类别操作记录  操作表
    @RequestMapping("/query_classify_record")
    @ResponseBody
    public Map<String,Object> query_classify_record(String text,Integer limit,Integer page){
        if(text == null || text.equals("")){
            return classify_list(limit,page);
        }else {
            Map<String,Object> map = new HashMap<>();

            List<Classify_record> records = curriculumService.query_classify_record(page,limit,text);
            Integer record_num = curriculumService.query_getRecord_num(text);
            map.put("code",0);
            map.put("msg","");
            map.put("count",record_num);
            map.put("data",records);
            return map;
        }

    }

    //获取所有课程类别信息
    @RequestMapping("/classifyList_new")
    @ResponseBody
    public List<Classify> classifyList_new(){

        List<Classify> classifies = curriculumService.classifyList_new();
        List<Classify> classify = new ArrayList<>();
        for(Classify treeNode:classifies){
            if(StringUtils.isBlank(treeNode.getField())){
                classify.add(findChildren(treeNode,classifies));
            }
        }

        return  classify;
    }
    //运用递归的方法获取课程类别以及其下所有的子类别
    public static Classify findChildren(Classify classify,List<Classify> classifyList){
        for(Classify classify1:classifyList){
            if(classify1.getField() != null){
                if(classify.getId()== Integer.parseInt(classify1.getField())){
                    if(classify.getChildren() == null){
                        classify.setChildren(new ArrayList<Classify>());
                    }
                    classify.getChildren().add(findChildren(classify1,classifyList));
                }
            }

        }
        return classify;
    }


    //删除课程类别信息
    @RequestMapping("/classify_del")
    @ResponseBody
    public String classify_del(Integer id,Integer del_userid,String title){
        Classify_record record = new Classify_record();
        String edit_type = "删除";
        record.setClassify_id(id);
        record.setName_new(title);
        record.setEdit_userid(del_userid);
        record.setType(edit_type);


        Integer delOk = curriculumService.classify_del(id,record);

        if(delOk>0){
            return "删除成功";
        }else {
            return "删除失败";
        }
    }



    //得到课程类别id的最大值
    public  Integer getMaxClassify(){
        Integer maxId = 10001;
        Integer id = curriculumService.getMaxClassify();
        if(id != null){
            maxId = id +1;
        }
        return maxId;
    }

    //课程类别表格监听(树形结构的增加和修改)
    @RequestMapping("/classify_edit")
    @ResponseBody
    public String classify_edit(Integer id , String title_new,Integer superid,Integer add_userid){
        String edit_type = null;
       if(id != null){   //如果这个参数不为空则代表操作是更改
           String title_old = curriculumService.queryClassify_title(id);
           if(title_new.equals(title_old)){
               return "null";
           }else {

                   Classify_record record = new Classify_record();
                   edit_type="编辑";
                   record.setClassify_id(id);
                   record.setName_new(title_new);
                   record.setName_old(title_old);
                   record.setEdit_userid(add_userid);
                   record.setType(edit_type);
                   Integer editOk = curriculumService.classify_edit(id,title_new,record);
                   if(editOk>0){
                       return "操作成功";
                   }else {
                       return "操作失败";
                   }


           }

       }else {   //如果这个参数为空，则代表这个节点为新建节点，所以进行增加操作
           Classify_record record = new Classify_record();
           edit_type = "增加";
           record.setClassify_id(getMaxClassify());
           record.setName_new(title_new);
           record.setEdit_userid(add_userid);
           record.setType(edit_type);

           String superid1 = String.valueOf(superid);
           Integer addOk = curriculumService.classify_add(getMaxClassify(),title_new,superid1,add_userid,record);
           if(addOk>0){
               return "操作成功";
           }else {
               return "操作失败";
           }
       }


    }

        //管理员页面用户列表
    @RequestMapping("/getUserList")
    @ResponseBody
    public Map<String,Object> getUserList(Integer page,Integer limit){
        Map<String,Object> map = new HashMap<>();
        List<User> userList =curriculumService.userList(page, limit);
        Integer userCount = curriculumService.userCount();
        map.put("code",0);
        map.put("msg","");
        map.put("count",userCount);
        map.put("data",userList);
       return map;
    }

    //管理员页面查询用户（条件按用户ID、账号、昵称查询）
    @RequestMapping("/queryUser")
    @ResponseBody
    public Map<String,Object> queryUser(Integer page,Integer limit,String text){
        if(text == null || text.equals("")){
            return getUserList(page, limit);
        }else {
            Map<String,Object> map = new HashMap<>();
            List<User> userList =curriculumService.queryUser(page, limit,text);
            Integer query_userCount = curriculumService.query_userCount(text);
            map.put("code",0);
            map.put("msg","");
            map.put("count",query_userCount);
            map.put("data",userList);
            return map;
        }

    }

    //冻结/解冻用户账号
    @RequestMapping("/lock_user")
    @ResponseBody
    public String lock_user(String state,Integer id){
        Integer user_state = null;
        if(state.equals("lock")){
            user_state = 2;
        }else if(state.equals("unlock")){
            user_state = 1;
        }
        Integer lock_edit = curriculumService.edit_lock(id,user_state);
        if(lock_edit>0){
            return "更改成功";
        }else {
            return "更改失败";
        }

    }

    /**
     * 根据前台传递过来的id和state处理 ，如果state为get_pass则将申请表的审核状态更改, 然后将用户表的 type字段和certificate字段更改
     * 如果state为not_pass则只更改申请表中的state为3即可
     * @param id
     * @param state
     * @param user_id
     * @return
     */
    @RequestMapping("/approval_teaApply")
    @ResponseBody
    public String approcal_teaApply(Integer id,Integer user_id,String state,String apply_date,Integer certificate,HttpSession session){
        Notice notice = new Notice();
        notice.setUser_id(user_id);
        notice.setTitle("关于教师资格申请的通知");
        Integer manager_id = (Integer) session.getAttribute("user_id");
        notice.setSend_user(manager_id);
        notice.setAll_send(2);

        if(state.equals("get_pass")){
            notice.setMessage("尊敬的用户，用户ID为："+user_id+",您于"+apply_date+"发送的的教师资格申请已通过审核,感谢您对本平台的支持");
            Integer sendMsg1 = noticeService.insert_notice(notice); //发送短消息
            Integer updateApply = teacherService.updateApplication(id,2);  //更新教师申请状态
            Integer edit_user = curriculumService.edit_type(user_id,2,certificate);  //更新用户权限
            Integer makeEarnings = userService.makeEarnings(user_id); //创建收入表

            Integer makePopularityTable = recordService.insertPopularityTable(user_id,null); //创建今日热度表

            if (sendMsg1>0 && updateApply>0 && edit_user>0 && makeEarnings>0 &&makePopularityTable>0){
                return "操作成功";
            }else {
                return "操作失败";
            }


        }else{
            notice.setMessage("尊敬的用户，用户ID为："+user_id+",您于"+apply_date+"发送的的教师资格申请未通过审核,感谢您对本平台的支持");
            Integer updateApply = teacherService.updateApplication(id,3);
            Integer sendMsg = noticeService.insert_notice(notice);
            if(updateApply>0 && sendMsg>0){
                return "操作成功";
            }else {
                return "操作失败";
            }
        }
    }


    /*根据id查询课程列表*/
    @RequestMapping("/queryClassiftById")
    @ResponseBody
    public List<Classify> queryClassiftById(Integer id){
        List<Classify> classifies = curriculumService.queryClassiftById(id);
        return classifies;
    }

    //获取 开课审核申请列表
    @RequestMapping("/getCoursesApplyList")
    @ResponseBody
    public Map<String,Object> getCoursesApplyList(Integer page,Integer limit){
        Map<String,Object> map = new HashMap<>();
        Integer count = curriculumService.getCurriculumCount(2);
        List<Curriculum> curriculumList = curriculumService.getCurriculum(page,limit,2);
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("data",curriculumList);
        return map;
    }

    //根据课程ID获取教师提供的课程相关的证书
    @RequestMapping("/getPCLLCertificate_url")
    @ResponseBody
    public Map<String,Object> getPCLLCertificate_url(Integer curriculum_id,Integer page,Integer limit){
        Map<String,Object> map = new HashMap<>();
        Integer count = curriculumService.getPCLLByCurrIdCount(curriculum_id);
        List<Certificate_PCLL> pcll = curriculumService.getPCLLByCurrId(curriculum_id,page,limit);
        List<Certificate_PCLL> pclls = new ArrayList<>();
        for(Certificate_PCLL pcll1:pcll){
            pcll1.setUrl(URLutil.url_change(pcll1.getUrl()));
            pcll1.setCer_name("开设课程相关证书");
            pclls.add(pcll1);
        }
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("data",pclls);
        return map;
    }

    /**
     * 教师开课申请页面的 通过申请和不通过申请
     * @param curriculum_id
     * @return
     */
    @RequestMapping("/approval_currApply")
    @ResponseBody
    public String approval_currApply(Integer curriculum_id,Integer tea_id,String state,String apply_date,String c_name,HttpSession session){
        Notice notice = new Notice();
        notice.setUser_id(tea_id);
        notice.setTitle("关于课程《"+c_name+"》开设申请的通知");
        Integer manager_id = (Integer) session.getAttribute("user_id");
        notice.setSend_user(manager_id);
        notice.setAll_send(2);

        if(state.equals("get_pass")){
            notice.setMessage("尊敬的用户，用户ID为："+tea_id+",您于"+apply_date+"发送的名为《"+c_name+"》课程开设的申请已通过审核,感谢您对本平台的支持");
            Integer sendMsg1 = noticeService.insert_notice(notice);
            Integer updateCurriculum_state = curriculumService.updateCurriculum_state(curriculum_id,1);
            Integer makePopularityTable = recordService.insertPopularityTable(null,curriculum_id); //创建今日热度表

            if (sendMsg1>0 && updateCurriculum_state>0&& makePopularityTable>0){
                return "操作成功";
            }else {
                return "操作失败";
            }


        }else{
            notice.setMessage("尊敬的用户，用户ID为："+tea_id+",您于"+apply_date+"发送的名为《"+c_name+"》课程开设的申请未通过审核,感谢您对本平台的支持");
            Integer updateCurriculum_state = curriculumService.updateCurriculum_state(curriculum_id,3);
            Integer sendMsg = noticeService.insert_notice(notice);
            if(updateCurriculum_state>0 && sendMsg>0){
                return "操作成功";
            }else {
                return "操作失败";
            }
        }
    }

    //获取课程列表信息（管理员）
    @RequestMapping("/getCourseList")
    @ResponseBody
    public Map<String,Object> getCourseList(String text,Integer state,Integer page,Integer limit){
        Map<String,Object> map = new HashMap<>();
        List<Curriculum> curriculumList = curriculumService.getCourseList(text, state, page, limit);
        Integer count = curriculumService.getCourseListCount(text, state);
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("data",curriculumList);
        return map;
    }

    //封停课程
    @RequestMapping("/lock_curriculum")
    @ResponseBody
    public String lock_curriculum(String state, Integer curriculum_id, Integer tea_id, String c_name, HttpSession session){
        Integer manager_id = (Integer) session.getAttribute("user_id");
        Notice notice = new Notice();
        notice.setUser_id(tea_id);
        notice.setTitle("关于您开设的课程状态更改的通知");
        notice.setSend_user(manager_id);
        notice.setAll_send(2);

        if(state.equals("_lock")){
            notice.setMessage("尊敬的用户，用户ID为："+tea_id+",您开设的的名为《"+c_name+"》的课程已被管理员停封，如有疑问请及时联系管理员");
            Integer sendMsg1 = noticeService.insert_notice(notice);
            Integer updateCurriculum_state = curriculumService.updateCurriculum_state(curriculum_id,6);
            if (sendMsg1>0 && updateCurriculum_state>0){
                return "操作成功";
            }else {
                return "操作失败";
            }


        }else{
            notice.setMessage("尊敬的用户，用户ID为："+tea_id+",您开设的的名为《"+c_name+"》的课程已被管理员解除停封状态，请在“我开设的课程”模块对课程进行管理");
            Integer updateCurriculum_state = curriculumService.updateCurriculum_state(curriculum_id,1);
            Integer sendMsg = noticeService.insert_notice(notice);
            if(updateCurriculum_state>0 && sendMsg>0){
                return "操作成功";
            }else {
                return "操作失败";
            }
        }
    }

    /**
     * 用户添加课程评论
     * @param comment
     * @return
     */
    @RequestMapping("/currComment")
    @ResponseBody
    public String currComment(Curr_comment comment){
        Integer chooseCourseOrNot = curriculumService.queryChooseCourseOrNot(comment.getUser_id(),comment.getCurr_id());
        if(chooseCourseOrNot<=0){
            return "请先报名参加本课程";
        }
        comment.setContext(HtmlUtils.htmlEscape(comment.getContext()));
        Integer num = 0;
        if(comment.getEvaluate()>0 && comment.getEvaluate()<=2){  ///根据评价星级  对用户和课程进行热度增加
            num=1;
        }else if(comment.getEvaluate()>2&&comment.getEvaluate()<=4){
            num=2;
        }else if(comment.getEvaluate() == 5){
            num=3;
        }
        Integer insertComment = curriculumService.addCurrComment(comment);
        Integer addPopu = UserController.addCurrPopularity(comment.getCurr_id(),num);
        if (insertComment>0 && addPopu>0){
            return "发布成功";
        }else {
            return "发布失败";
        }
    }

    /**
     * 获得相应课程的全部评论
     */
    @RequestMapping("/getComment")
    @ResponseBody
    public Map<String,Object> getComment(Integer curr_id,Integer page,Integer limit){
        Map<String,Object> map = new HashMap<>();
        List<Curr_comment> commentList = new ArrayList<>();
        List<Curr_comment> comments =  curriculumService.getCurrCommentByCurrId(curr_id,page,limit);
        Integer count = curriculumService.getCurrCommentByCurrId_Count(curr_id);

        if(comments.size()==0){
            return null;
        }
        for(Curr_comment comment:comments){
            if(comment.getName() == null || comment.getName().equals("")){
                comment.setName(comment.getUsername());
            }
            if(comment.getPurikura() == null || comment.getPurikura().equals("")){
                comment.setPurikura("/purikura/purikura.png");
            }else {
                comment.setPurikura(URLutil.url_change(comment.getPurikura()));
            }
            comment.setContext(HtmlUtils.htmlUnescape(comment.getContext()));

            commentList.add(comment);
        }
        map.put("list",commentList);
        map.put("count",count);
        return map;
    }



    //获取网站数据（课程数、用户数、教师数、浏览量）
    @RequestMapping("/getWebData")
    @ResponseBody
    public Map<String,Object> getWebData(){
        Map<String,Object> map = new HashMap<>();
        Integer userNum = webService.selectUserCount();
        Integer teacNum = webService.selectTeacCount();
        Integer currNum = webService.selectCurrCount();
        WebVisits visits =webService.selectVisitsTodayCount();
        visits.setVisits_today_format(visits.getVisits_today());
        visits.setVisits_all_format(visits.getVisits_all());
        map.put("userNum", NUMUtil.changeInt(userNum));
        map.put("teacNum",NUMUtil.changeInt(teacNum));
        map.put("currNum",NUMUtil.changeInt(currNum));
        map.put("visits",visits);
        return map;
    }

    //获取七日内网站访问量
    @RequestMapping("/getWebVisitRecord")
    @ResponseBody
    public Map<String,Object> getWebVisitRecord(){
        List<WebVisitsRecord> visitsRecordList = webService.getWebVisitsRecord();
        List<Integer> visits = new ArrayList<>();
        List<String>  date = new ArrayList<>();
        for (WebVisitsRecord record:visitsRecordList){
            visits.add(record.getVisits());
            date.add(record.getDate());
        }
        Map<String,Object> map = new HashMap<>();
        map.put("visits",visits);
        map.put("date",date);
        return map;
    }


    /**
     * 管理员页面获取首页轮播图列表
     * @return
     */
    @RequestMapping("/getCarouselList")
    @ResponseBody
    public Map<String,Object> getCarouselList(){
        Map<String,Object> map = new HashMap<>();
        List<Carousel> carousels = webService.getCarouselList();
        Integer count = carousels.size();
        map.put("code",0);
        map.put("msg","");
        map.put("data",carousels);
        map.put("count",count);
        return map;
    }

    /**
     * 管理员页面自定义添加首页轮播图
     * @param carousel
     * @return
     */
    @RequestMapping("/addCarousel")
    @ResponseBody
    public String addCarousel(Carousel carousel){
        Integer addCarouselOk = webService.addCarousel(carousel);
        if(addCarouselOk>0){
            return "添加成功";
        }else {
            return "添加失败";
        }
    }


    /**
     * 删除首页轮播图
     * @param id
     * @return
     */
    @RequestMapping("/delCarousel")
    @ResponseBody
    public String delCarousel(Integer id){
        Integer delOk = webService.delCarousel(id);
        if(delOk>0){
            return "删除成功";
        }else {
            return "删除失败";
        }
    }


    /**
     * 根据课程ID获取课程7日内热度情况
     * @param curr_id
     * @return
     */
    @RequestMapping("/getPopularityRecord")
    @ResponseBody
    public Map<String,Object> getPopularityRecord(Integer curr_id){
        List<String> dateList = new ArrayList<>();
        List<BigDecimal> popuList = new ArrayList<>();
        List<Popularity_record> popularity_records = teacherService.getPopularityRecord(null,curr_id);
        for(Popularity_record record:popularity_records){
            dateList.add(record.getDate());
            popuList.add(record.getPopularity());
        }
        Map<String,Object> map = new HashMap<>();
        map.put("dateList",dateList);
        map.put("popuList",popuList);
        return map;

    }
}
