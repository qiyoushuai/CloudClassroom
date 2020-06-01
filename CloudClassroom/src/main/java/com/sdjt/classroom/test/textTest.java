package com.sdjt.classroom.test;

import com.sdjt.classroom.util.NUMUtil;
import org.springframework.web.util.HtmlUtils;

import java.text.DecimalFormat;

public class textTest {
    public static void main(String[] args) {
        String html = " <div class=\"layui-body\">\n" +
                "        <video id=\"video\" controls=\"controls\" class=\"learn_video\" autoplay=\"autoplay\">\n" +
                "            你的浏览器貌似不支持video 元素 %>_<%\n" +
                "\n" +
                "          <source src=\"/resources${firstUrl}\" type=\"video/mp4\">\n" +
                "\n" +
                "        </video>\n" +
                "    </div>";
        System.out.println(HtmlUtils.htmlEscape(html));
        System.out.println("==============================================");
        System.out.println(HtmlUtils.htmlUnescape(HtmlUtils.htmlEscape(html)));
    }
}
