package org.keega.idea.controller;

import org.keega.idea.service.IPublicInterfaceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

/**
 * Created by zun.wei on 2016/11/24.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@Controller
@RequestMapping("/webService")
public class WebServiceController {

    private final IPublicInterfaceService publicInterfaceService;

    @Inject
    public WebServiceController(IPublicInterfaceService publicInterfaceService) {
        this.publicInterfaceService = publicInterfaceService;
    }


    @RequestMapping(value = "/modify/{interfaceKey}/{interfaceName}/{requestContent:.+}")
    public void modifyDataRestful(@PathVariable String interfaceKey,
                                  @PathVariable String interfaceName,
                                  @PathVariable String requestContent,
                                  HttpServletResponse response) {
        printData(response,publicInterfaceService.modifyData(interfaceKey, interfaceName, requestContent));
    }
    @RequestMapping(value = "/modify")
    public void modifyDataTradition(@RequestParam(name = "key",defaultValue = "defaultKey") String key,
                                    @RequestParam(name = "name",defaultValue = "defaultName") String name,
                                    @RequestParam(name = "content",defaultValue = "defaultContent") String content,
                                    HttpServletResponse response) {
        printData(response,publicInterfaceService.modifyData(key, name, content));
    }



    @RequestMapping(value = "/searchObject/{interfaceKey}/{interfaceName}/{requestContent:.+}")
    public void searchJsonObjectRestful(@PathVariable String interfaceKey,
                                 @PathVariable String interfaceName,
                                 @PathVariable String requestContent,
                                 HttpServletResponse response) {
        //System.out.println(requestContent);
        printData(response,publicInterfaceService.searchJsonObject(interfaceKey, interfaceName, requestContent));
    }
    @RequestMapping(value = "/searchObject")
    public void searchJsonObjectTradition(@RequestParam(name = "key",defaultValue = "defaultKey") String key,
                                          @RequestParam(name = "name",defaultValue = "defaultName") String name,
                                          @RequestParam(name = "content",defaultValue = "defaultContent") String content,
                                          HttpServletResponse response) {
        printData(response,publicInterfaceService.searchJsonObject(key, name, content));
    }



    @RequestMapping(value = "/searchArray/{interfaceKey}/{interfaceName}/{requestContent:.+}")
    public void searchJsonArrayRestful(@PathVariable String interfaceKey,
                                @PathVariable String interfaceName,
                                @PathVariable String requestContent,
                                HttpServletResponse response) {
        printData(response,publicInterfaceService.searchJsonArray(interfaceKey, interfaceName, requestContent));
    }
    @RequestMapping(value = "/searchArray")
    public void searchJsonArrayTradition(@RequestParam(name = "key",defaultValue = "defaultKey") String key,
                                         @RequestParam(name = "name",defaultValue = "defaultName") String name,
                                         @RequestParam(name = "content",defaultValue = "defaultContent") String content,
                                         HttpServletResponse response) {
        printData(response,publicInterfaceService.searchJsonArray(key, name, content));
    }



    @RequestMapping(value = "/searchXml/{interfaceKey}/{interfaceName}/{requestContent:.+}")
    public void searchXmlStringRestful(@PathVariable String interfaceKey,
                                @PathVariable String interfaceName,
                                @PathVariable String requestContent,
                                HttpServletResponse response) {
        printData(response,publicInterfaceService.searchXmlString(interfaceKey, interfaceName, requestContent));
    }
    @RequestMapping(value = "/searchXml")
    public void searchXmlStringTradition(@RequestParam(name = "key",defaultValue = "defaultKey") String key,
                                         @RequestParam(name = "name",defaultValue = "defaultName") String name,
                                         @RequestParam(name = "content",defaultValue = "defaultContent") String content,
                                         HttpServletResponse response) {
        printData(response,publicInterfaceService.searchXmlString(key, name, content));
    }

    // 转换文本格式返回
    private void printData(HttpServletResponse response, String msg) {
        try {
            //以html方式返回
            //response.setContentType("text/html;charset=utf-8");
            //以文本的方式返回
            response.setContentType("text/plain;charset=utf-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = new PrintWriter(new OutputStreamWriter(response.getOutputStream(), "UTF-8"));
            out.println(msg);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
