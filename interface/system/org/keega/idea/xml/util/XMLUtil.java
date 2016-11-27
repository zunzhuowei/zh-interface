package org.keega.idea.xml.util;

import java.io.*;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.*;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.xml.sax.EntityResolver;

/*
 * 单例模式指的是所有的对象只有一个，这样子可以提高访问的效率
 * 即：把userDocument设置成静态
 */
public class XMLUtil {

    private static Document tableDocument = null;
    private static final SAXReader reader = new SAXReader();

    public static synchronized Document getSearchDocument(String xmlFileName) {
        // 如果不存在就创建对象
        //SAXReader reader = null;
        tableDocument = null;
        try {
            //reader = new SAXReader();
            String path = "org/keega/idea/xml/search/" + xmlFileName + ".xml";
            tableDocument = reader.read(XMLUtil.class.getClassLoader().getResource(path));
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (NullPointerException ne) {
            System.err.println("传入的xml名称不存在！");
        }
        return tableDocument;
    }

    public static synchronized Document getModifyDocument(String xmlFileName) {
        // 如果不存在就创建对象
        //SAXReader reader = null;
        tableDocument = null;
        try {
            //reader = new SAXReader();
            String path = "org/keega/idea/xml/modify/" + xmlFileName + ".xml";
            tableDocument = reader.read(XMLUtil.class.getClassLoader().getResource(path));
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (NullPointerException ne) {
            System.err.println("传入的xml名称不存在！");
        }
        return tableDocument;
    }

    public static void write2XML(Document d, String xmlFileName,int writeType) {
        XMLWriter writer = null;
        String filePath = null;
        if (0 == writeType) {
            filePath = "org/keega/idea/xml/search/"+xmlFileName+".xml";
        } else if (1 == writeType) {
            filePath = "org/keega/idea/xml/modify/"+xmlFileName+".xml";
        }
        File file = new File(filePath);
        try {
            writer = new XMLWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file),"utf-8")),
                    OutputFormat.createPrettyPrint());
            writer.write(d);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static File createNewXml(String xmlFileName,int writeType) {
        String filePath = null;
        File file = null;
        try {
            if (0 == writeType) {
                filePath = "org/keega/idea/xml/search/"+xmlFileName+".xml";
            } else if (1 == writeType) {
                filePath = "org/keega/idea/xml/modify/"+xmlFileName+".xml";
            }
            file = new File(filePath);
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return file;
    }


    /*public static void write2XML(Document d, String name) {
        XMLWriter writer = null;
        try {
            writer = new XMLWriter(new FileWriter(
                    XMLUtil.class.getClassLoader().getResource("xml/" + name + ".xml").getPath().replace("bin", "src")),
                    OutputFormat.createPrettyPrint());
            writer.write(d);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }*/

}
