package com.sdjt.classroom.util;

public class URLutil {
    public static String url_change(String url){
        String url1;
        String url2;
        if(url != null && !url.equals("") ){
            url1 = url.substring(url.lastIndexOf("\\",url.lastIndexOf("\\")-1));
            url2 = url1.replace("\\","/");
          return url2;
        }else{
            return null;
        }
    }
}
