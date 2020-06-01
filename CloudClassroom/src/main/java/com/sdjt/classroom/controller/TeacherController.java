package com.sdjt.classroom.controller;

import com.sdjt.classroom.model.*;
import com.sdjt.classroom.service.CurriculumService;
import com.sdjt.classroom.service.ResourcesService;
import com.sdjt.classroom.service.TeacherService;
import com.sdjt.classroom.service.UserService;
import com.sdjt.classroom.util.NUMUtil;
import com.sdjt.classroom.util.URLutil;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teac")
@Transactional(rollbackFor = Exception.class)
public class TeacherController {
    @Resource
    private TeacherService teacherService;
    @Resource
    private ResourcesService resourcesService;
    @Resource
    private UserService userService;
    @Resource
    private CurriculumService curriculumService;

    //提交申请教师资格
    @RequestMapping("/teac_application")
    @ResponseBody
    public String teac_application(Teacher_application application,String url_TEFL,String url_diploma){
        Integer certificateMaxNo = 10001;
        if (resourcesService.getCertificateMaxNo()!=null){
            certificateMaxNo =resourcesService.getCertificateMaxNo()+1;
        };
        Certificate certificate = new Certificate(certificateMaxNo,url_TEFL,url_diploma);
        Integer cert_insert = resourcesService.insert_Certificate(certificate);
        application.setCertificate(certificateMaxNo);
        Integer appli_insert = teacherService.insert_tea_application(application);
        if (cert_insert > 0 && appli_insert >0){
            return "申请成功";
        }else {
            return "后台错误";
        }

    }


    //（管理员）获取教师申请列表
    @RequestMapping("/getApplicationList")
    @ResponseBody
    public Map<String,Object> getApplicationList(Integer page,Integer limit){
        Map<String,Object> map = new HashMap<>();
        Integer count = teacherService.getApplicationCount(null);
        List<Teacher_application> applications = teacherService.getAllApplication(page, limit);
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("data",applications);

        return map;
    }

    /**
     * 管理员页面的教师资格申请信息中 获取教师的资格证书与学历证书url管理员页面的教师资格申请信息中 获取教师的资格证书与学历证书url
     * @param id  通过子查询用申请表中的id获取证书表中的url
     * @return
     */

    @RequestMapping("/getCertificate_url")
    @ResponseBody
    public Map<String,Object> getCertificate_url(Integer id){
        Map<String,Object> map = new HashMap<>();
        List<Certificate>  certificates = teacherService.getCertificateById(id);
        List<Certificate_format> certificate_formats = format_Ceritificate(certificates);
        map.put("code",0);
        map.put("msg","");
        map.put("count",certificate_formats.size());
        map.put("data",certificate_formats);
        return map;
    }

    @RequestMapping("/getCertificate_url_user")
    @ResponseBody
    public Map<String,Object> getCertificate_url_user(Integer id){
        Map<String,Object> map = new HashMap<>();
        List<Certificate>  certificates = userService.getCertificateById(id);
        List<Certificate_format> certificate_formats = format_Ceritificate(certificates);
        map.put("code",0);
        map.put("msg","");
        map.put("count",certificate_formats.size());
        map.put("data",certificate_formats);
        return map;
    }

    /**
     * 工具方法 将获取到的证书表中的两张证书变更为两个实体类以便前台读取
     * @param certificates
     * @return
     */
    public static List<Certificate_format> format_Ceritificate(List<Certificate> certificates){
        List<Certificate_format> certificate_formats = new ArrayList<>();
        for(Certificate certificate:certificates){
            //将表中的教师资格证和学历证书分别存放，以便前台读取
            Certificate_format certificate_format_TEFL = new Certificate_format();
            Certificate_format certificate_format_diploma = new Certificate_format();
            certificate_format_TEFL.setCer_name("教师资格证");
            certificate_format_TEFL.setCer_url(URLutil.url_change(certificate.getTEFL()));
            certificate_format_TEFL.setId(certificate.getId());
            certificate_formats.add(certificate_format_TEFL);
            /***********************************************/
            certificate_format_diploma.setId(certificate.getId());
            certificate_format_diploma.setCer_name("学历证书");
            certificate_format_diploma.setCer_url(URLutil.url_change(certificate.getDiploma()));
            certificate_formats.add(certificate_format_diploma);
        }
        return certificate_formats;
    }

    /**
     * 管理员页面 查询教师资格申请  模糊胡查询
     *  根据  id user_id \relname\idcard_no\apply_date\position 模糊查询
     * @param data
     * @return
     */
    @RequestMapping("/query_apply")
    @ResponseBody
    public Map<String,Object> query_apply(Integer page,Integer limit,String data,Integer state){
        if( (data == null  ||data.equals("") ) &&(state == null ||state.equals(""))){
            return getApplicationList(page, limit);
        }
    Map<String,Object> map = new HashMap<>();
    List<Teacher_application> applications = teacherService.queryApplication(page, limit, data,state);
    Integer applicationsCount = teacherService.queryApplicationCount(data,state);
    map.put("code",0);
    map.put("msg","");
    map.put("count",applicationsCount);
    map.put("data",applications);
    return map;
    }

/* //课程证书
    Integer getPCLLMaxId();
    Integer add_PCLL(Integer id,Integer user_id,Integer curriculum_id,String url);
    Integer apply_OpenClass(Curriculum curriculum);*/

    /**
     * 教师申请开课
     * @param curriculum
     * @param cer_url1
     * @return
     */
    @RequestMapping("/teac_apply_class")
    @ResponseBody
    public String teac_apply_class(Curriculum curriculum,String[] cer_url1){
        Integer Curr_id = 1001;
        Integer cer_uploadOk = 0;
        Integer applyOk = 0;
        if(teacherService.getCurrMaxId()!= null){
            Curr_id = teacherService.getCurrMaxId()+1;
        }
        curriculum.setId(Curr_id);
      for(String url_pcll:cer_url1){
          cer_uploadOk = teacherService.add_PCLL(curriculum.getTea_id(),Curr_id,url_pcll);
      }
      if(curriculum.getClassify_child().equals("")){
          curriculum.setClassify_child(null);
      }
      if(curriculum.getPrice() == null){
          curriculum.setPrice(0.00);
      }
      applyOk = teacherService.apply_OpenClass(curriculum);
      if(applyOk>0 && cer_uploadOk>0){
          return "申请成功";
      }else {
          return "申请失败";
      }

    }
    @RequestMapping("/getApplyClass_record")
    @ResponseBody
    public Map<String,Object> getApplyClass_record(HttpSession session,Integer page,Integer limit){
        Integer user_id = (Integer) session.getAttribute("user_id");
        Map<String,Object> map = new HashMap<>();
        List<Curriculum> curriculumList = teacherService.getCurriculumRecord(user_id,page,limit);
        Integer count = teacherService.getCurriculumRecourdCount(user_id);
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("data",curriculumList);
        return map;
    }
    @RequestMapping("/queryCurriculumRecord")
    @ResponseBody
    public Map<String,Object> queryCurriculumRecord(HttpSession session,Integer page,Integer limit,String text){
        if(text==null || text.equals("")){
            return getApplyClass_record(session, page, limit);
        }
        Integer user_id = (Integer) session.getAttribute("user_id");
        Map<String,Object> map = new HashMap<>();
        List<Curriculum> curriculumList = teacherService.queryCurriculumRecord(user_id,text,page,limit);
        Integer count = teacherService.queryCurriculumRecordCount(user_id,text);
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("data",curriculumList);
        return map;
    }


    @RequestMapping("/getChapter")
    @ResponseBody
    public DTreeResponse getChapter(Integer curr_id){
        Map<String,Object> map = new HashMap<>();
        List<Chapter> chapters = teacherService.getChapterByCurriId(curr_id);
       //Integer count = teacherService.getChapterByCurrIdCount(curr_id);
        List<DTree> dtrees = new ArrayList<DTree>();
        // 遍历数据
        DTree d = null;
        for(Chapter chapter : chapters){
            d = new DTree();
            if(chapter.getPid()==0){
                d.setLast(false);
            }
            d.setId(chapter.getId().toString());
            if((chapter.getUrl()==null || chapter.getUrl().equals("")) && chapter.getPid() !=0){
                d.setTitle(chapter.getCha_name()+"&emsp;<span class=\"layui-badge-dot\"></span>");
            }else {
                d.setTitle(chapter.getCha_name());
            }

           d.setParentId(chapter.getPid().toString());
           dtrees.add(d);
        }
      DTreeResponse response = new DTreeResponse();
      response.setData(dtrees);
      Status status = new Status();
      status.setCode(200);
      status.setMessage("success");
      response.setStatus(status);
        return response;
    }

    //教师进行课程主章的添加
    @RequestMapping("/addChapter")
    @ResponseBody
    public String addChapter(String cur_id,String cha_name){
        Integer curId = Integer.parseInt(cur_id);
        Integer addOk = teacherService.addChapter(curId,cha_name);
        if(addOk>0){
            return "添加成功";
        }else {
            return "添加失败";
        }

    }

    /**
     * 教师对章节的删除，如果是如节点连同子节点一块删除
     * @param cha_id
     * @return
     */
    @RequestMapping("/delChapter")
    @ResponseBody
    public String delChapter(Integer cha_id) {
        //先查询课程章节是否小于等于1  如果等一 则停课
        Integer chapter_num =teacherService.getCurr_ChapterNumByChapterId(cha_id);
        Chapter chapter = teacherService.getChapterById(cha_id);
        if(chapter_num <=1){

            Integer changeCurrState = teacherService.openAndCloseCurr(chapter.getCurr_id(),5,null);
            if (changeCurrState<=0){
                return "系统出现异常";
            }
        }
        Integer delOk = teacherService.delChapterById(cha_id);
        //判断章节是否有视频文件 如果有则删除文件
        String url = chapter.getUrl();
        Boolean delVideo = true;
        if(url!=null && !url.equals("")){
            delVideo = new Resources().resources_delete(url);
        }
        if (delOk > 0 &delVideo) {
            return "删除成功";

        } else {
            return "删除失败";
        }

    }

    /**
     * 教师添加子章节
     * pid
     * cha_name
     * curr_id
     * @return
     */
    @RequestMapping("/addChapter_sm")
    @ResponseBody
    public String addChapter_sm(String pid,String cha_name,String curr_id){
        Integer pId = Integer.parseInt(pid);
        Integer currId = Integer.parseInt(curr_id);
        Integer addOk = teacherService.addChapter_sm(pId, cha_name, currId);
        if(addOk>0){
            return "添加成功";
        }else {
            return "添加失败";
        }

    }

    //更改课程章节的名称
    @RequestMapping("/editChapterName")
    @ResponseBody
    public String editChapterName(Integer id ,String cha_name){
        Integer updateOk = teacherService.editChapterName(id, cha_name);
        if(updateOk>0){
            return "更改成功";
        }else {
            return "更改失败";
        }


    }

    //将上传的视频的url存在对应课程章节的url字段中,记录新的视频路径之前判断章节是否有旧视频，删除旧视频文件后再更新信息
    @RequestMapping("/setChapterUrl")
    @ResponseBody
    public String setChapterUrl(Integer cha_id,String video_url){
        Chapter  chapter = teacherService.getChapterById(cha_id);
        if(chapter.getUrl()!=null && !chapter.getUrl().equals("")){
            if(!new Resources().resources_delete(chapter.getUrl())){
                return "删除原课程视频时出错";
            }
        }
        Integer setOk = teacherService.setChapterUrl(cha_id, video_url);
        if(setOk>0){
            return "提交成功";
        }else {
            return "提交失败";
        }
    }


    //教师开课和停课  如果课程没有封面的话需要先上传课程封面
    @RequestMapping("/openAndCloseCurr")
    @ResponseBody
    public String openAndCloseCurr(Integer curr_id,Integer state,String cover_url){
        String type = null;
        if (state ==4){
            type = "开课";
        }else {
            type = "停课";
        }
        Integer changeOk = teacherService.openAndCloseCurr(curr_id, state, cover_url);
        if(changeOk >0){
            return type+"成功";
        }else {
            return type+"失败";
        }

    }

    /**
     * 教师模块首页获取收入和热度情况
     * @param session
     * @return
     */
    @RequestMapping("/getPricePopuData")
    @ResponseBody
    public Map<String,Object> getPricePopuData(HttpSession session){
        Integer user_id = (Integer)session.getAttribute("user_id");
        BigDecimal allPopularity = (BigDecimal) session.getAttribute("popularity_all");
        BigDecimal todayPopu = teacherService.getTeacOrCurrPopuplarity_today(null,user_id);
        Earnings earnings = teacherService.getMyEarning(user_id);
        String popu_all = null;
        String popu_today= null;
        if(allPopularity != null){
            popu_all = NUMUtil.changeNum(allPopularity);
        }
        if(todayPopu != null){
            popu_today = NUMUtil.changeNum(todayPopu);
        }
        if(earnings != null){
            earnings.setEarnings_today_format(earnings.getEarnings_today());
            earnings.setTotal_revenue_format(earnings.getTotal_revenue());
        }

        Map<String,Object> map = new HashMap<>();
        map.put("popu_today",popu_today);
        map.put("popu_all",popu_all);
        map.put("earnings",earnings);
        return map;

    }


    /**
     * 获取用户或课程的 收入和热度记录表
     * @return
     */
    @RequestMapping("/getEarnAndCurrRecord")
    @ResponseBody
    public Map<String,Object> getEarnAndCurrRecord(Integer curr_id,HttpSession session){
        Map<String,Object> map = new HashMap<>();
        Integer user_id = (Integer) session.getAttribute("user_id");
        List<Earning_record> earningRecords = teacherService.getEarning_record(user_id);
        List<Popularity_record> popularity_records = teacherService.getPopularityRecord(user_id,null);

        List<String> date = new ArrayList<>();
        List<Double> earning = new ArrayList<>();
        List<BigDecimal> populary = new ArrayList<>();
        for(Earning_record record:earningRecords){
            date.add(record.getDate());
            earning.add(record.getMoney());
        }
        for(Popularity_record record1:popularity_records){
            populary.add(record1.getPopularity());
        }
        map.put("date",date);
        map.put("earning",earning);
        map.put("populary",populary);
        return map;
    }

    /**
     * 教师端“我开设的课程”页面 教师更改课程封面
     * @param curr_id   根据id 查询课程是否有封面 如果有则将之前的封面图片删除
     * @param cover_url
     * @return
     */
    @RequestMapping("/updateCover")
    @ResponseBody
    public String updateCover(Integer curr_id,String cover_url){
        Curriculum curriculum = curriculumService.getCurriculumById(curr_id);
        String cover_old = curriculum.getCover_url();
        if(cover_old != null && !cover_old.equals("")){
            if(!new Resources().resources_delete(cover_old)){
                return "删除原图片时发生异常";
            }
        }
        Integer updatOk = teacherService.updateCoverByCurrId(curr_id,cover_url);
        if(updatOk>0){
            return "更新成功";
        }else{
            return "更新失败";
        }

    }


}
