package com.sdjt.classroom.util;

import java.math.BigDecimal;
import java.text.DecimalFormat;

public class NUMUtil {
   public static String changeNum(BigDecimal num){
       DecimalFormat df = new DecimalFormat("#,##0");
       return df.format(num);
   }

    public static String changePrice(Double num){
        DecimalFormat df = new DecimalFormat("#,##0.00");
        return df.format(num);
    }

    public static String changeInt(Integer num){
        DecimalFormat df = new DecimalFormat("#,##0");
        return df.format(num);
    }

}
