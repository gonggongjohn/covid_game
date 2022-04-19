package com.zhd.controller;

import com.zhd.domain.UserIdentity;
import com.zhd.service.IUserIdentityService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@CrossOrigin
@RestController
@RequestMapping("/picture")
public class PictureController {

    @Autowired
    private IUserIdentityService userIdentityService;

    @RequestMapping(path = "/uploadPicture",method = RequestMethod.POST)
    public String uploadPicture(@RequestParam("uid") Integer uid,
                              @RequestParam("picFile")MultipartFile picFile,
                              HttpServletRequest request) throws IOException {
        String path = request.getServletContext().getRealPath("/");
        File picPath = new File(path+"img/identity/");
        if(!picPath.exists()) picPath.mkdirs();
        String fileName = UUID.randomUUID().toString().replace("-","")
                +"."+ FilenameUtils.getExtension(picFile.getOriginalFilename());
        picFile.transferTo(new File(picPath,fileName));
        userIdentityService.savePic(uid,"img/identity/"+fileName);
        System.out.println(path);
        return "img/identity/"+fileName;
    }
}
