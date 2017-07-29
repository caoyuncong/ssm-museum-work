package mw.demo.util;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * Created by caoyuncong on
 * 2017/7/27 15:02
 * ssm.
 */
public class FileUpload {
    public static String upload(String filePath, MultipartFile file) {
        String photoFileName = getPhotoFileName();
        String originalFileName = file.getOriginalFilename();
        String excName = FilenameUtils.getExtension(originalFileName);
        try{
            String fileName = photoFileName.concat("." + excName);
            file.transferTo(new File(filePath,fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static String getPhotoFileName() {
        return Long.toString(System.nanoTime());
    }
}
