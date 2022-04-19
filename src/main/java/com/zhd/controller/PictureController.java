package com.zhd.controller;

import com.zhd.config.ApplicationValues;
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

@RestController
@RequestMapping("/picture")
@CrossOrigin
public class PictureController {

    @Autowired
    private IUserIdentityService userIdentityService;

    @Autowired
    private ApplicationValues applicationValues;

    @RequestMapping(path = "/uploadPicture",method = RequestMethod.POST)
    public String uploadPicture(@RequestParam("uid") Integer uid,
                              @RequestParam("picFile")MultipartFile picFile) throws IOException {
        String path = applicationValues.getPath();
        File picPath = new File(path+"img/identity/");
        if(!picPath.exists()) picPath.mkdirs();
        String fileName = UUID.randomUUID().toString().replace("-","")
                +"."+ FilenameUtils.getExtension(picFile.getOriginalFilename());
        picFile.transferTo(new File(picPath,fileName));
        userIdentityService.savePic(uid,"img/identity/"+fileName);
        return "img/identity/"+fileName;
    }
}
