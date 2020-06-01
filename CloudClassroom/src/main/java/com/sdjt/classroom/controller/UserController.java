package com.sdjt.classroom.controller;

import com.sdjt.classroom.model.Curriculum;
import com.sdjt.classroom.model.LearnTimeRecord;
import com.sdjt.classroom.model.Notice;
import com.sdjt.classroom.model.User;
import com.sdjt.classroom.service.CurriculumService;
import com.sdjt.classroom.service.NoticeService;
import com.sdjt.classroom.service.RecordService;
import com.sdjt.classroom.service.UserService;
import com.sdjt.classroom.util.MoneyUtil;
import com.sdjt.classroom.util.URLutil;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.HtmlUtils;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.*;

@Controller
@RequestMapping("/user")
@Transactional(rollbackFor = Exception.class)
public class UserController {
    @Resource
    private NoticeService noticeService;
    @Resource
    private UserService userService;

    private static CurriculumService curriculumService;

    @Resource
    public void setCurriculumService(CurriculumService curriculumService) {
        UserController.curriculumService = curriculumService;
    }

    private static RecordService recordService;

    @Resource
    public void setRecordService(RecordService recordService) {
        UserController.recordService = recordService;
    }

    //用户注册
    @RequestMapping("/user_add")
    @ResponseBody
    public String user_add(String username, String password) {
        Integer selectUsernameId = userService.getUserIdByUsername(username);
        if (selectUsernameId != null && selectUsernameId > 0) {
            return "此用户名已被使用";
        }
        boolean add_ok = userService.user_add(username, password);

        if (add_ok) {
            return "注册成功";
        } else {
            return "注册失败";
        }

    }


    //用户登录
    @RequestMapping("/user_login")
    @ResponseBody
    public String user_login(String username, String password, Boolean remember, HttpSession session, HttpServletResponse resp, HttpServletRequest reqs) {
        List<User> login_ok = userService.userLogin(username, password);
        if (login_ok.size() > 0) {
            Integer user_id = null;
            String url1 = null;
            String url2 = null;
            String name = null;
            String relname = null;
            String user_money = null;
            Integer user_type = null;
            BigDecimal popularity_all = null;
            for (User user : login_ok) {
                if (user.getState() == 2) {  //如果用户的账号状态为2 则账号为被冻结状态
                    return "您的帐号当前为冻结状态，请联系管理员反馈信息";
                }


                String url = user.getPurikura();
                //如果用户有头像，获取路径将反斜杠替换为"/"，然后截取上层文件夹和文件名，存在session中以供虚拟路径读取头像
                if (url != null && !url.equals("")) {
                    url1 = url.substring(url.lastIndexOf("\\", url.lastIndexOf("\\") - 1));
                    url2 = url1.replace("\\", "/");
                }
                //如果用户名的昵称不为空则赋值并存在session中
                if (user.getName() != null && !user.getName().equals("")) {
                    name = user.getName();
                }
                //获取用户ID 在个人信息页面用于获取用户的所有信息并回显
                user_id = user.getId();
                user_type = user.getType();
                relname = user.getRelname();
                popularity_all = user.getPopularity();
                if (user.getMoney() != null && user.getMoney() != 0.00) {
                    DecimalFormat df = new DecimalFormat("########0.00");
                    user_money = df.format(user.getMoney());
                } else {
                    user_money = "0.00";
                }
            }
            if (remember != null) {
                Cookie cookie_pswd = new Cookie(username, password);
                cookie_pswd.setMaxAge(60 * 60 * 24 * 7);
                resp.addCookie(cookie_pswd);
            } else {
                Cookie[] cookies = reqs.getCookies();
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals(username)) {
                        cookie.setMaxAge(0);
                        resp.addCookie(cookie);
                        break;
                    }
                }
            }


            session.setAttribute("user_name", name);
            session.setAttribute("popularity_all", popularity_all);
            session.setAttribute("username", username);
            session.setAttribute("user_id", user_id);
            session.setAttribute("user_relname", relname);
            session.setAttribute("pur_url", url2);
            session.setAttribute("user_type", user_type);
            session.setAttribute("user_money", user_money);

            return "登录成功";
        } else {
            return "登录失败";
        }

    }


    //获取用户存在cookie中的账号密码
    @RequestMapping("/getCookieAccount")
    @ResponseBody
    public String getCookieAccount(String username, HttpServletRequest req) {
        Cookie[] cookies = req.getCookies();
        String password = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(username)) {
                    password = cookie.getValue();
                    break;
                }
            }
        }
        return password;
    }

    //获取用户的信息
    @RequestMapping("/getInfo")
    @ResponseBody
    public User getInfo(Integer id) {
        List<User> userList = userService.getInfo(id);
        User user1 = new User();

        for (User user : userList) {                 //查询到用户的所有信息并返回
            user1.setId(user.getId());
            user1.setUsername(user.getUsername());
            user1.setPassword(user.getPassword());
            user1.setName(user.getName());
            user1.setSex(user.getSex());
            user1.setAddress(user.getAddress());
            user1.setPhone(user.getPhone());
            user1.setEmail(user.getEmail());
            user1.setAdd_date(user.getAdd_date());
            user1.setMoney(user.getMoney());
            user1.setType(user.getType());
            user1.setState(user.getState());
            user1.setCertificate(user.getCertificate());
            user1.setPopularity(user.getPopularity());
            user1.setRelname(user.getRelname());
            user1.setProfile(user.getProfile());

        }

        return user1;
    }


    //个人信息页面的修改个人信息
    @RequestMapping("edit_info")
    @ResponseBody
    public String editInfo(User user, HttpSession session) {
        //在更新个人信息时，如果用户有之前的头像，并且更换了头像，则把之前的头像删除再进行更新，否则占用应用内存
        String puri_oleUrl = userService.get_purikura_url(user.getId());  //先查询到用户之前的头像的utl地址
        if (user.getPurikura() == null || user.getPurikura().equals("")) {   //如果前台传递过来的头像url地址是空（代表用户并未更改头像）则将传递过来的url地址赋值为用户原来的头像的url地址
            user.setPurikura(puri_oleUrl);
        } else {   //如果用户传递过来的头像的url地址不为空的话，代表替换头像则根据原来的url地址删除原来的头像
            if (puri_oleUrl != null && !puri_oleUrl.equals("")) {  //如果用户原来的头像url地址不是空值，则根据url地址删除存放在服务器上的原头像
                Resources resources = new Resources();
                if (!resources.resources_delete(puri_oleUrl)) {
                    return "删除原头像时出错";
                }
            }
        }
        Integer edit_Ok = userService.editInfo(user);
        if (edit_Ok > 0) {
            String url1 = null;
            String url2 = null;

            String url = user.getPurikura();
            //如果用户有头像，获取路径将反斜杠替换为"/"，然后截取上层文件夹和文件名，存在session中以供虚拟路径读取头像
            if (url != null && !url.equals("")) {
                url1 = url.substring(url.lastIndexOf("\\", url.lastIndexOf("\\") - 1));
                url2 = url1.replace("\\", "/");
                session.setAttribute("pur_url", url2);
            }

            String name = user.getName();
            if (name != null && !name.equals("")) {
                session.setAttribute("user_name", name);
            }
            return "更新成功！";
        } else {
            return "更新失败！";
        }

    }

    //修改密码
    @RequestMapping("/changePswd")
    @ResponseBody
    public String changePswd(Integer id, String pswd_old, String pswd_new) {

        Integer updateOk = userService.changePswd(id, pswd_old, pswd_new);
        if (updateOk > 0) {
            return "修改成功";
        } else {
            return "修改失败，请确认您的原密码";

        }

    }


    //登出
    @RequestMapping("/logout")
    public String logout(HttpSession session,HttpServletRequest req) {
        session.invalidate();
        HttpSession session1= req.getSession();
        session1.setAttribute("visit",true);  //统计网站访问量是不会因为退出登录而销毁session就会增加统计数量
        return "redirect:/";
    }


    //用户选择课程
    @RequestMapping("/enrollCurr")
    @ResponseBody
    public String enrollCurr(Integer user_id, Integer curr_id) {
        Integer enrollOk = userService.enrollCurr(user_id, curr_id); //添加课程用户对应数据
        Integer addCurrPopularity = addCurrPopularity(curr_id, 1);
        if (addCurrPopularity <= 0) {
            return "后台异常";
        }
        if (enrollOk > 0) {
            return "报名成功";
        } else {
            return "报名失败";
        }

    }

    //用户选择付费课程并缴费
    @RequestMapping("/payForCurr")
    @ResponseBody
    public String payForCurr(Integer curr_id, Integer user_id, Integer order_id, Double price, Integer tea_id, HttpSession session) {
        Integer enrollOk = userService.enrollCurr(user_id, curr_id); //加入课程
        Integer user_editMoney = userService.eidtMoney(user_id, price, 2); //用户减少余额
        Integer teac_editMoney = userService.eidtMoney(tea_id, price, 1);  //教师增加余额
        Integer teac_Earning_record = userService.updateEarnings(tea_id, price);  //教师今日收益及总收益增加
        Integer record = userService.curr_buy_record(order_id, curr_id, user_id, tea_id, price);  //添加购买记录
        Integer addCurrPopularity = addCurrPopularity(curr_id, 1); //增加课程1热度
        if (addCurrPopularity <= 0) {
            return "后台异常";
        }
        if (enrollOk > 0 && user_editMoney > 0 && teac_editMoney > 0 && record > 0 && teac_Earning_record > 0) {
            setUserMoneyToSession(user_id, session);
            return "课程购买成功";
        } else {
            return "课程购买失败";
        }

    }

    //用户余额充值
    @RequestMapping("/recharge")
    @ResponseBody
    public String recharge(HttpSession session, Double money) {
        Integer user_id = (Integer) session.getAttribute("user_id");
        Integer rechargeOk = userService.eidtMoney(user_id, money, 1);
        setUserMoneyToSession(user_id, session);
        if (rechargeOk > 0) {
            return "充值成功";
        } else {
            return "充值失败";
        }
    }

    //用户放弃选择已选择的课程
    @RequestMapping("/giveUpCourse")
    @ResponseBody
    public String courses_attended(HttpSession session, Integer curr_id) {
        Integer user_id = (Integer) session.getAttribute("user_id");
        Integer delOk = userService.giveUpCourse(user_id, curr_id);
        return "";
    }


    //用户获取购买付费课程信息
    @RequestMapping("/myBuyCourseRecord")
    @ResponseBody
    public List<Curriculum> myBuyCourseRecord(HttpSession session) {
        Integer user_id = (Integer) session.getAttribute("user_id");
        List<Curriculum> orders = userService.myBuyCourseRecord(user_id);
        List<Curriculum> curriculumList1 = new ArrayList<>();
        for (Curriculum curr : orders) {
            curr.setCover_url(URLutil.url_change(curr.getCover_url()));
            String title = curriculumService.queryClassify_title(Integer.parseInt(curr.getClassify()));
            String title_child = null;
            if (curr.getClassify_child() != null && !curr.getClassify_child().equals("")) {
                title_child = curriculumService.queryClassify_title(Integer.parseInt(curr.getClassify_child()));
            } else {
                title_child = "null";
            }

            curr.setClassify(title);
            curr.setClassify_child(title_child);
            curr.setPrice_format(MoneyUtil.money_format(curr.getPrice()));
            curriculumList1.add(curr);
        }
        return curriculumList1;
    }


    //用户删除付费课程购买订单
    @RequestMapping("/delOrder")
    @ResponseBody
    public String delOrder(Integer order_id) {
        Integer delOrderOk = userService.delOrder(order_id);
        if (delOrderOk > 0) {
            return "删除成功";
        } else {
            return "删除失败";
        }

    }

    //为课程和教师增加1热度
    @RequestMapping("/addPopularity")
    @ResponseBody
    public void addPopularity(Integer curr_id) {
        addCurrPopularity(curr_id, 1);
    }


    //发送信息页面获取用户列表
    @RequestMapping("/Email_getUserList")
    @ResponseBody
    public List<User> Email_getUserList(HttpSession session) {
        Integer send_id = (Integer) session.getAttribute("user_id");
        List<User> userList = userService.Email_getUserList(send_id);
        return userList;
    }

    //发送信息
    @RequestMapping("/sendMsg")
    @ResponseBody
    public String sendMsg(Notice notice, HttpSession session) {
        Integer send_id = (Integer) session.getAttribute("user_id");
        notice.setSend_user(send_id);
        Integer sendOk = noticeService.insert_notice(notice);
        if (sendOk > 0) {
            return "发送成功";
        } else {
            return "发送失败";
        }
    }


    //获取发送给用户的通知
    @RequestMapping("/getNotice")
    @ResponseBody
    public Map<String, Object> getNotice(HttpSession session, Integer limit, Integer page) {
        Integer user_id = (Integer) session.getAttribute("user_id");
        Map<String, Object> map = new HashMap<>();
        List<Notice> notices = userService.getNotice(user_id, limit, page);
        for (Notice notice : notices) {
            if (notice.getSend_name() == null || notice.getSend_name().equals("")) {
                notice.setSend_name(notice.getSend_username());
            }
        }
        Integer count = userService.getNoticeCount(user_id);
        map.put("code", 0);
        map.put("count", count);
        map.put("msg", "");
        map.put("data", notices);
        return map;
    }

    //标记通知为已读
    @RequestMapping("/markNoticeAsRead")
    @ResponseBody
    public String markNoticeAsRead(@RequestParam(value = "notices_id[]") Integer[] notices_id) {
        Integer updateOk = userService.updateNoticeType(notices_id);
        if (updateOk > 0) {
            return "操作成功";
        } else {
            return "操作失败";
        }

    }

    //删除通知
    @RequestMapping("/deleteNotice")
    @ResponseBody
    public String deleteNotice(@RequestParam(value = "notices_id[]") Integer[] notices_id) {
        Integer delOk = userService.deleteNotice(notices_id);
        if (delOk > 0) {
            return "删除成功";
        } else {
            return "删除失败";
        }
    }

    //为用户添加学习时间 记录本次的视频观看时间如果用户没有更换视频或没有关闭页面则将这次提交的时间减去session中存放的观看时间，以免学生卡bug 哈哈哈
    @RequestMapping("/addLearnTime")
    @ResponseBody
    public String addLearnTime(HttpSession session, Double time) {
        Integer user_id = (Integer) session.getAttribute("user_id");
        Double OneVideoLearnTime = (Double) session.getAttribute("OneVideoLearnTime");
        if (OneVideoLearnTime != null) {
            time = time - OneVideoLearnTime;
        } else {
            OneVideoLearnTime = 0.0;
        }
        Double timeForHour = time / (60 * 60);
        Integer addLearnTimeOk = userService.updateLearnTime(user_id, timeForHour);
        Double num = OneVideoLearnTime + time;
        session.setAttribute("OneVideoLearnTime", num);
        return "";

    }

    //如果用户切换了课程章节视频，则将上一个视频观看时间清零
    @RequestMapping("/delOneVideoLearnTime")
    @ResponseBody
    public String delOneVideoLearnTime(HttpSession session) {
        session.setAttribute("OneVideoLearnTime", 0.0);
        return "";
    }

    //查询用户的选课数量以及用户的今日学习时间以及总学习时间
    @RequestMapping("/getMyLearnTimeAndCurrNumData")
    @ResponseBody
    public Map<String, Object> getMyLearnTimeAndCurrNumData(HttpSession session) {
        Integer user_id = (Integer) session.getAttribute("user_id");
        Map<String, Object> map = new HashMap<>();
        Integer chooseCurr = userService.getMyCoursesNum(user_id);
        User user_learnTime = userService.getLearnTimeAndAllLearnTimeByUserId(user_id);
        String overPercent = userService.getPercentageOfLearnTime(user_learnTime.getLearn_time());
        BigDecimal b = new BigDecimal(user_learnTime.getLearn_time());
        user_learnTime.setLearn_time(b.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());
        BigDecimal a = new BigDecimal(user_learnTime.getLearn_time_all());
        user_learnTime.setLearn_time_all(a.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());
        map.put("user_learnTime", user_learnTime);
        map.put("overPercent", overPercent);
        map.put("chooseCurr", chooseCurr);
        return map;

    }


    //获得学生的七日内的学习记录数据，用于模块首页折线图的展示
    @RequestMapping("/getLearnTimeRecord")
    @ResponseBody
    public Map<String, List> getLearnTimeRecord(HttpSession session) {
        Integer user_id = (Integer) session.getAttribute("user_id");
        Map<String, List> map = new HashMap<>();
        List<LearnTimeRecord> learnTimeRecords = userService.getLearnTimeRecordByUserId(user_id);
        List<String> dateList = new ArrayList<>();
        List<Double> timeList = new ArrayList<>();
        for (LearnTimeRecord record : learnTimeRecords) {
            dateList.add(record.getDate());
            BigDecimal a = new BigDecimal(record.getLearn_time());
            timeList.add(a.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());
        }
        map.put("dateList", dateList);
        map.put("timeList", timeList);
        return map;
    }


    /**
     * 以下方法均为工具方法
     * ************************************************************************************************************************
     *
     * @param user_id
     * @param session
     */
    //工具方法 获取用户新的余额并将余额重新赋值到session中
    public void setUserMoneyToSession(Integer user_id, HttpSession session) {
        List<User> user = userService.getInfo(user_id);
        for (User user1 : user) {
            if (user1.getMoney() != null && user1.getMoney() != 0.00) {
                DecimalFormat df = new DecimalFormat("########0.00");
                session.setAttribute("user_money", df.format(user1.getMoney()));
            } else {
                session.setAttribute("user_money", "0.00");
            }
        }
    }

    //为课程和用户添加1热度
    public static Integer addCurrPopularity(Integer curr_id, Integer num) {
        Integer addPopuOk = 0;
        if (num == null) {
            num = 1;
        }
        Integer Curr_addPopuOk = curriculumService.addCurrPopularity(curr_id, num);
        Integer user_addPopuOk = curriculumService.addUserPopularity(curr_id, num);
        Curriculum curriculum = curriculumService.getCurriculumById(curr_id);
        Integer user_id = null;
        if (curriculum != null) {
            user_id = curriculum.getTea_id();
        }
        Integer curr_todayPopu = recordService.addPopularity(null, curr_id);
        Integer teac_todayPopu = recordService.addPopularity(user_id, null);
        if (Curr_addPopuOk > 0 && user_addPopuOk > 0 && curr_todayPopu > 0 && teac_todayPopu > 0) {
            addPopuOk = 1;
        }
        return addPopuOk;
    }

}
