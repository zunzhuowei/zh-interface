package org.keega.idea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by zun.wei on 2016/11/23.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@Controller
@RequestMapping("/interface")
public class CreateInterfaceController {

    @RequestMapping(value = "/init", method = RequestMethod.GET)
    public String init() {
        return "/table/view";
    }
}

