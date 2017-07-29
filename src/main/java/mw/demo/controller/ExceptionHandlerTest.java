package mw.demo.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by caoyuncong on
 * 2017/7/27 21:29
 * ssm.
 */
@ControllerAdvice // advice 建议 AOP Aspect Oriented Programming
public class ExceptionHandlerTest {
    @ExceptionHandler()
    public String handleMaxUploadSizeExceededException(MaxUploadSizeExceededException e,HttpServletRequest request) {
        request.setAttribute("message", e.getCause().getMessage());
        return "/work/index.jsp";
    }
}
