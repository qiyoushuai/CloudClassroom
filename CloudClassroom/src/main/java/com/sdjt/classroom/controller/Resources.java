package com.sdjt.classroom.controller;


import com.sdjt.classroom.util.URLutil;
import net.sf.json.JSONObject;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.UUID;

@Controller
@RequestMapping("/repository")
public class Resources {
  /*  @RequestMapping("test")
    @ResponseBody
    public String upload(HttpServletRequest request, HttpServletResponse response) throws FileUploadException, IOException {
        if(!ServletFileUpload.isMultipartContent(request)){
            throw new RuntimeException("请求不支持文件上传");
        }
        //为基于磁盘的文件项创建工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();
        //创建文件上传的核心处理程序
        ServletFileUpload upload = new ServletFileUpload(factory);
        //解析请求
        List<FileItem> item = upload.parseRequest(request);
        for(FileItem fileItem:item){
            if(fileItem.isFormField()){
                String name = fileItem.getFieldName();
                String value = fileItem.getString();
            }else{
                String fileName = fileItem.getName();
               InputStream is = fileItem.getInputStream();
               String path = request.getServletContext().getRealPath("/testUpload");
                System.out.println(path);
               File descFile = new File(path,fileName);
                OutputStream os = new FileOutputStream(descFile);

                //将输入流中的数据写入到输出流中
                int len = -1;
                byte[] bytes = new byte[1024];
                while ((len=is.read(bytes))!=  -1){
                    os.write(bytes,0,len);
                }
                os.close();
                is.close();
            }
        }
        return "成功";
    }
*/
@RequestMapping("/purikura_upload")
@ResponseBody
public JSONObject purikura_upload(MultipartFile file,HttpServletRequest req) throws IOException {
    JSONObject res = new JSONObject();
    JSONObject resURL = new JSONObject();

String path = req.getServletContext().getRealPath("/repository/purikura");
//创建文件对象
    File file1 = new File(path);
    if(!file1.exists() || !file1.isDirectory()){
        file1.mkdir(); //如果这个文件夹不存在或者不是文件夹，创建物理文件夹
    }

    String file_name = file.getOriginalFilename();
    String new_fileName = UUID.randomUUID()+"_"+file_name;

    File file2 = new File(path,new_fileName);
    file.transferTo(file2);

    resURL.put("res",file2.getPath());
    res.put("code",0);
    res.put("msg","");
    res.put("data",resURL);
    return res;
}

    /**
     * 证书上传：获取前台传递过来的数据，保存图片
     * @param file   //文件
     * @param req
     * @param type  // 类型 TEFL：教师资格证书   diploma：学历证书
     * @return
     * @throws IOException
     */
    @RequestMapping("/certificate_upload")
    @ResponseBody
    public JSONObject certificate_upload_TEFL(MultipartFile file,HttpServletRequest req,String type) throws IOException {
        JSONObject res = new JSONObject();
        JSONObject resURL = new JSONObject();

        String path = req.getServletContext().getRealPath("/repository/certificate/"+type);
        //创建文件对象
        File file1 = new File(path);
        if(!file1.exists() || !file1.isDirectory()){
            file1.mkdir(); //如果这个文件夹不存在或者不是文件夹，创建物理文件夹
        }

        String file_name = file.getOriginalFilename();
        String new_fileName = UUID.randomUUID()+"_"+file_name;

        File file2 = new File(path,new_fileName);
        file.transferTo(file2);

        resURL.put("res",file2.getPath());
        res.put("code",0);
        res.put("msg","");
        res.put("data",resURL);
        return res;
    }



    /**
     * 证书上传：获取前台传递过来的数据，保存课程视频
     * @param file   //文件
     * @param req
     * @param
     * @return
     * @throws IOException
     */
    @RequestMapping("/video_upload")
    @ResponseBody
    public JSONObject video_upload(MultipartFile file,HttpServletRequest req) throws IOException {
        JSONObject res = new JSONObject();
        JSONObject resURL = new JSONObject();

        String path = req.getServletContext().getRealPath("/repository/video");
        //创建文件对象
        File file1 = new File(path);
        if(!file1.exists() || !file1.isDirectory()){
            file1.mkdir(); //如果这个文件夹不存在或者不是文件夹，创建物理文件夹
        }

        String file_name = file.getOriginalFilename();
        String new_fileName = UUID.randomUUID()+"_"+file_name;

        File file2 = new File(path,new_fileName);
        file.transferTo(file2);

        resURL.put("res",file2.getPath());
        res.put("code",0);
        res.put("msg","");
        res.put("data",resURL);
        return res;
    }


    /**
     * 课程封面上传：获取前台传递过来的数据，保存课程封面图片
     * @param file   //文件
     * @param req
     * @param
     * @return
     * @throws IOException
     */
    @RequestMapping("/cover_upload")
    @ResponseBody
    public JSONObject cover_upload(MultipartFile file,HttpServletRequest req) throws IOException {
        JSONObject res = new JSONObject();
        JSONObject resURL = new JSONObject();

        String path = req.getServletContext().getRealPath("/repository/curr_cover");
        //创建文件对象
        File file1 = new File(path);
        if(!file1.exists() || !file1.isDirectory()){
            file1.mkdir(); //如果这个文件夹不存在或者不是文件夹，创建物理文件夹
        }

        String file_name = file.getOriginalFilename();
        String new_fileName = UUID.randomUUID()+"_"+file_name;

        File file2 = new File(path,new_fileName);
        file.transferTo(file2);

        resURL.put("res",file2.getPath());
        res.put("code",0);
        res.put("msg","");
        res.put("data",resURL);
        return res;
    }



    /**
     * 首页轮播图图片上传：保存首页轮播封面图片
     * @param file   //文件
     * @param req
     * @param
     * @return
     * @throws IOException
     */
    @RequestMapping("/carousel_upload")
    @ResponseBody
    public JSONObject carousel_upload(MultipartFile file,HttpServletRequest req) throws IOException {
        JSONObject res = new JSONObject();
        JSONObject resURL = new JSONObject();

        String path = req.getServletContext().getRealPath("/repository/carousel");
        //创建文件对象
        File file1 = new File(path);
        if(!file1.exists() || !file1.isDirectory()){
            file1.mkdir(); //如果这个文件夹不存在或者不是文件夹，创建物理文件夹
        }

        String file_name = file.getOriginalFilename();
        String new_fileName = UUID.randomUUID()+"_"+file_name;

        File file2 = new File(path,new_fileName);
        file.transferTo(file2);

        resURL.put("res","/resources"+ URLutil.url_change(file2.getPath()));
        res.put("code",0);
        res.put("msg","");
        res.put("data",resURL);
        return res;
    }





@RequestMapping("/resources_delete")
@ResponseBody
public Boolean resources_delete(String url){
File file = new File(url);
if(file.exists() && file.isFile()){
    if(file.delete()){
        return true;
    }else {
        return false;
    }
}else {
    return false;
}
}
   /* @RequestMapping("/upload")
    public String upload(@RequestParam("file")MultipartFile file,HttpServletRequest req,String username,String pswd) throws Exception {
        //指定存储路径
        String path = req.getServletContext().getRealPath("/repository/video");
        //创建文件对象
        File file1 = new File(path);
        if(!file1.exists() || !file1.isDirectory()){
            //当文件不存在或者不是目录时，创建物理文件夹
            file1.mkdir();
        }


        String filePath = file.getOriginalFilename();
        String new_filename = UUID.randomUUID() + "_"+filePath;
        System.out.println(path+"\\"+new_filename);


        File file2 = new File(path,new_filename);
        file.transferTo(file2);

        HttpSession session = req.getSession();
        session.setAttribute("url","video/"+new_filename);
        return "/test.html";
    }
*/
/*
    @RequestMapping("/download")
    public ResponseEntity download() throws Exception{
        FileSystemResource file = new FileSystemResource("周杰伦-蒲公英的约定.mp3");
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition","attachment; filename=123.mp3");
        return ResponseEntity.ok()
                .headers(headers)
                .contentLength(file.contentLength())
                .contentType(MediaType.parseMediaType("application/octet-stream"))
                .body(new InputStreamResource(file.getInputStream()));
    }
*/





}
