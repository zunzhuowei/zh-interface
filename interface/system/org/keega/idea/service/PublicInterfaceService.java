package org.keega.idea.service;

import org.keega.idea.dao.modify.IModifyDao;
import org.keega.idea.dao.modify.ModifyDao;
import org.keega.idea.dao.search.ISearchDao;
import org.keega.idea.dao.search.SearchDao;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;

/**
 * Created by zun.wei on 2016/11/21.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@Service
@WebService
public class PublicInterfaceService implements IPublicInterfaceService {

    /*@Inject
    private IModifyDao modifyDao;
    @Inject
    private ISearchDao searchDao;*/

    private static final IModifyDao modifyDao = new ModifyDao();
    private static final ISearchDao searchDao = new SearchDao();


    @Override
    public String modifyData(@WebParam(name = "interfaceKey") String interfaceKey,
                             @WebParam(name = "interfaceName") String xmlFileName,
                             @WebParam(name = "requestContent") String conditions) {
        return modifyDao.modifyData(interfaceKey, xmlFileName, conditions);
    }

    @Override
    public String searchJsonObject(@WebParam(name = "interfaceKey") String interfaceKey,
                                      @WebParam(name = "interfaceName") String xmlFileName,
                                      @WebParam(name = "requestContent") String conditions) {
        return searchDao.getSearchJsonObject(interfaceKey, xmlFileName, conditions);
    }

    @Override
    public String searchJsonArray(@WebParam(name = "interfaceKey") String interfaceKey,
                                     @WebParam(name = "interfaceName") String xmlFileName,
                                     @WebParam(name = "requestContent") String conditions) {
        return searchDao.getSearchJsonArray(interfaceKey, xmlFileName, conditions);
    }

    @Override
    public String searchXmlString(@WebParam(name = "interfaceKey") String interfaceKey,
                                  @WebParam(name = "interfaceName") String xmlFileName,
                                  @WebParam(name = "conditions") String conditions) {
        return searchDao.writeJsonData2Xml(interfaceKey, xmlFileName, conditions);
    }

/*    public static void main(String[] args) {
        Endpoint.publish("http://127.0.0.1:9998/webservice/public", new PublicInterfaceService());
        System.out.println(" process init successful !");
    }*/

}
