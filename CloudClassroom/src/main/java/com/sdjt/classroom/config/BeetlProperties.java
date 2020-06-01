package com.sdjt.classroom.config;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.Properties;

/**
 * description: 读取beetl配置项的类，为了让自己写的类被spring管理
 * 需要家相应的注解，一般没有业务关系的类采用万能注解<br>
 * date: 2019/11/21 17:38 <br>
 * author: qiyoushuai <br>
 * version: 1.0 <br>
 */
@Component
public class BeetlProperties {
    @Value("${beetl.delimiter-statement-start}")
    private String delimiterStatementStart;
    @Value("${beetl.delimiter-statement-end}")
    private String delimiterStatementEnd;

    /**
     * description: 把配置项设置到具体的值上 <br>
     * date: 2019/11/21 17:43 <br>
     * author: qiyoushuai <br>
     * @param
     * @return java.util.Properties
     */
    public Properties getProperties() {
        Properties properties = new Properties();
        if (StringUtils.isNotBlank(delimiterStatementStart)) {
            if (delimiterStatementStart.startsWith("\\")) {
                delimiterStatementStart = delimiterStatementStart.substring(1);
            }
            properties.setProperty("DELIMITER_STATEMENT_START", delimiterStatementStart);
        }
        if (StringUtils.isNotBlank(delimiterStatementEnd)) {
            properties.setProperty("DELIMITER_STATEMENT_END", delimiterStatementEnd);
        } else {
            properties.setProperty("DELIMITER_STATEMENT_END", "null");
        }
        return properties;
    }
}
