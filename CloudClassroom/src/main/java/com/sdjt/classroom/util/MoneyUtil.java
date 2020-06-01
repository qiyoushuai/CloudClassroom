package com.sdjt.classroom.util;

import java.text.DecimalFormat;

public class MoneyUtil {
    public static String money_format(Double money){
        DecimalFormat df = new DecimalFormat("#########.00");
        String new_money = df.format(money);
        return new_money;
    }
}
