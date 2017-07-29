package mw.demo.controller;

import mw.demo.model.Museum;
import mw.demo.util.Constant;
import mw.demo.util.FileUpload;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import mw.demo.model.Work;
import mw.demo.service.WorkService;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("work")
public class WorkController extends BaseController {

    private final WorkService workService;

    @Autowired
    public WorkController(WorkService workService) {
        this.workService = workService;
    }

    @RequestMapping("json")
    @ResponseBody
    private List<Work> test() {
        List<Work> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Museum museum = new Museum(i, "name...", "logo.png", "picture.jpg", "address...", null);
            Work work = new Work(i, "title...", "picture.jpg", "artist...", 1900, 1, museum);
            list.add(work);
        }
        return list;
    }
    @RequestMapping("create")
    private String create(Work work, @RequestParam MultipartFile pictureFile) {
        System.out.println(pictureFile.getOriginalFilename());
        String photoPath = application.getRealPath(Constant.UPLOAD_PHOTO_PATH);
        work.setPicture(FileUpload.upload(photoPath,pictureFile));
        workService.create(work);
        return "redirect:/work/queryAll";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        workService.remove(id);
        return "redirect:/work/queryAll";
    }

    @RequestMapping("modify")
    private String modify(Work work, @RequestParam MultipartFile pictureFIle) {
        if (!pictureFIle.isEmpty()) {
            String photoPath = application.getRealPath(Constant.UPLOAD_PHOTO_PATH);
            work.setPicture(FileUpload.upload(photoPath,pictureFIle));
        }
        workService.modify(work);
        return "redirect:/work/queryAll";
    }

    @RequestMapping("queryAll/{page}")
    private String queryAll(@PathVariable int page) {
        session.setAttribute("pagination", workService.queryAll(page));
        return "redirect:/work/list.jsp";
    }

    @RequestMapping("queryAll")
    private String queryAll() {
        return queryAll(1);
    }

    @RequestMapping("queryById/{id}")
    private String queryById(@PathVariable("id") Integer id) {
        session.setAttribute("work", workService.queryById(id));
        return "redirect:/work/edit.jsp";
    }

    @RequestMapping("queryWorks/{currentPage}")
    private String queryWorks(@PathVariable int currentPage) {
        session.setAttribute("pagination", workService.query("queryWorks", null, currentPage));
        return "redirect:/work/works.jsp";
    }

    @RequestMapping("queryWorks")
    private String queryWorks() {
        return queryWorks(1);
    }
}