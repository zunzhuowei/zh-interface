<#import "spring.ftl" as s />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>创建接口</title>
    <link href="<@s.url '/css/table.css'/>" rel="stylesheet"/>
    <link href="<@s.url '/easyui/themes/default/easyui.css'/>" rel="stylesheet"/>
    <link href="<@s.url '/easyui/themes/icon.css'/>" rel="stylesheet"/>
</head>
<body>
<script src="<@s.url '/js/boot.js'/>" type="text/javascript"></script>
<script src="<@s.url '/easyui/jquery.easyui.min.js'/>" type="text/javascript"></script>

<center>
    <table id="tbl" class="t1" border="1" style="width:1024px">
        <tr class="a1" style="height:40px">
            <th align="left" colspan="3">要查询的表名</th>
            <td align="left" colspan="3">
                <input type="text"/>
            </td>
        </tr>
        <tr class='a1' style='height:40px'>
            <td colspan='6' style='padding:2px'>
                <div style="width:1024px;">
                    <div class="mini-toolbar" style
                            ="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:100%;text-align:left"
                                ><b>学历信息<span style='color:red'>*</span></b>
                                    <div style="float: right;"></div>
                                </td>
                            </tr>
                        </table>
                    </div
                    >
                </div>
                <div id="A04" class="mini-datagrid" style="width:100%;height:200px;" allowSortColumn="false"
                     idField="I9999" allowResize="false" allowCellEdit="false" allowCellSelect="true"
                     multiSelect="true"
                     editNextOnEnterKey="true" editNextRowCell="true" showPager="false"
                     url="../table/gridData?tableName=A04&personFlag=01&A0100=00002678&flag=01">
                    <div property="columns">
                        <div type="indexcolumn"></div>
                        <div type="checkcolumn"></div>
                        <div name="A0435" field="A0435" headerAlign="center" allowSort="true">毕业学校
                            <input property="editor" class="mini-textbox" style="width:100%;" minWidth="200"/>
                        </div>
                        <div name ="A0444" field="A0444" headerAlign="center" allowSort="true">所学专业
                            <input property="editor" class="mini-textbox" style="width:100%;" minWidth="200"/>
                        </div>
                        <div name="A0430" field="A0430" allowSort="true" dateFormat ="yyyy-MM-dd" headerAlign="center">毕业时间
                            <input property="editor" class="mini-datepicker" style="width:100%;"/>
                        </div>
                        <div type="treeselectcolumn" field="C0401" headerAlign="center">学历性质
                            <input property  ="editor" class='mini-treeselect' url='../table/fieldCode?fieldCode=KF'
                             valueField='codeitemid' textField ='codeitemdesc'text='请选择'/>
                        </div>
                        <div type="treeselectcolumn" field="A0405" headerAlign="center">学历
                            <input property="editor" class='mini-treeselect' url='../table/fieldCode?fieldCode=YT'
                                   valueField ='codeitemid' textField='codeitemdesc' text='请选择'/>
                        </div>
                        <div type="treeselectcolumn" field="A0440" headerAlign="center">学位
                            <input property="editor" class='mini-treeselect' url='../table/fieldCode?fieldCode=AN'
                                   valueField='codeitemid' textField='codeitemdesc' text='请选择'/>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</center>
</body>
</html>

