package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Pontalti X
 *
 */
@Controller
public class MyErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request) {
        var statusObj = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (statusObj != null) {
            int status = Integer.parseInt(statusObj.toString());

            if (status == HttpStatus.NOT_FOUND.value()) {
                return "error/error-404";
            }
            if (status == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                return "error/error-500";
            }
            if (status == HttpStatus.FORBIDDEN.value()) {
                return "error/error-403";
            }
        }
        return "error/error";
    }
}
