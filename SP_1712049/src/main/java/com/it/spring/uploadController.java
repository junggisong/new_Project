package com.it.spring;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;

import com.oreilly.servlet.MultipartRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.minidev.json.JSONObject;

@Controller
public class uploadController {
	String imgSrc = "";
	 @RequestMapping("/uploadForm")
	    public String uploadForm() {
	        return "member/fileForm";
	    }
	    
	    @RequestMapping("/uploadOk")
	    public @ResponseBody String uploadOk(HttpServletRequest request) {
	        int size = 1024 * 1024 * 10; // 10M
	        String file = "";
	        String oriFile = "";
	        
	        JSONObject obj = new JSONObject();
	        
	        try {
	            String path = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
//	            System.out.println(path);
	            MultipartRequest multi = new MultipartRequest(request, path, size,
	                                    "UTF-8", new DefaultFileRenamePolicy());
	            Enumeration files = multi.getFileNames();
	            String str = (String)files.nextElement();
	            
	            file = multi.getFilesystemName(str);
	            oriFile = multi.getOriginalFileName(str);
	            
	            System.out.println(path +"\\" + oriFile);
	            obj.put("success", new Integer(1));
	            obj.put("desc", "업로드 성공");
	            String imgsrc = oriFile;
	            imgSrc =imgsrc ;
//	            System.out.println(imgSrc);
//	            System.out.println(imgsrc);
	        } catch (Exception e) {
	            e.printStackTrace();
	            obj.put("success", new Integer(0));
	            obj.put("desc", "업로드 실패");
	        }
	        
	        return obj.toJSONString();
	    }
	    
	    public String getSrc() {
	    	return imgSrc;
	    }
	    
	    
}
