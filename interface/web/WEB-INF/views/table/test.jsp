<%--
  Created by IntelliJ IDEA.
  User: Think
  Date: 2016/11/23
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <table>
        <tr>
            <td style="width: 1260px;">
                <div style="float: left;"><img src="../table/getPhoto?A0100
=00002678" style="height: 150px;width: 120px;" alt="点击浏览添加个人照片.."/><br>
                </div>
                <table id='A01' class='t1' border='1' style='width:1024px'>
                    <tr class='a1' style='height:40px'
                    >
                        <th align='left' colspan='6'>
                            <div style="float: right;"><span style="color:red;" id="yitijiao">人事信
息审核中...</span><span class="separator"></span><span class="separator"></span></div>
                        </th>
                    </tr>
                    <tr>
                        <th align
                                    ='left' style='width:120px'>姓名<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'
                        ><input class="mini-textbox" width="100%" required="true" name='A0101' value='邵兵'/></td>
                        <th align='left'
                            style='width:120px'>曾用名
                        </th>
                        <td align='left' style='width:256px'><input class="mini-textbox" width="100
%" required="false" name='A0104' value=''/></td>
                        <th align='left' style='width:120px'>性别<span style="color
:red">*</span></th>
                        <td align='left' style='width:256px'><input class='mini-treeselect' required="true"
                                                                    parentField='parentid'
                                                                    style="width:100%;background:#fff"
                                                                    url='../table/fieldCode?fieldCode=AX'
                                                                    onbeforeshowpopup
                                                                            ="oncheckbox('A0107')"
                                                                    valueField='codeitemid' textField='codeitemdesc'
                                                                    onnodeclick="clearValue('A0107'
,'1')" value='1' text='男' name='A0107' id='A0107'/></td>
                    </tr>
                    <tr>
                        <th align='left' style='width:120px'
                        >年龄<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'><input class="mini-spinner"
                                                                    style="width:100%;" required="true" minValue="0"
                                                                    maxValue="250" name='C0101' value='40'
                                                                    enabled="false"
                        /></td>
                        <th align='left' style='width:120px'>民族<span style="color:red">*</span></th>
                        <td align='left'
                            style='width:256px'><input class='mini-treeselect' required="true" parentField='parentid'
                                                       style="width
:100%;background:#fff" url='../table/fieldCode?fieldCode=AE' onbeforeshowpopup="oncheckbox('A0121')"
                                                       valueField='codeitemid' textField='codeitemdesc'
                                                       onnodeclick="clearValue('A0121','01')" value='01'
                                                       text='汉族' name='A0121' id='A0121'/></td>
                        <th align='left' style='width:120px'>政治面貌<span style="color
:red">*</span></th>
                        <td align='left' style='width:256px'><input class='mini-treeselect' required="true"
                                                                    parentField='parentid'
                                                                    style="width:100%;background:#fff"
                                                                    url='../table/fieldCode?fieldCode=AT'
                                                                    onbeforeshowpopup
                                                                            ="oncheckbox('H0203')"
                                                                    valueField='codeitemid' textField='codeitemdesc'
                                                                    onnodeclick="clearValue('H0203'
,'13')" value='13' text='群众' name='H0203' id='H0203'/></td>
                    </tr>
                    <tr>
                        <th align='left' style='width:120px'
                        >健康状况<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'><input class='mini-treeselect'
                                                                    required="true" parentField='parentid'
                                                                    style="width:100%;background:#fff" url='../table/fieldCode?fieldCode
=BF' onbeforeshowpopup="oncheckbox('A0124')" valueField='codeitemid' textField='codeitemdesc' onnodeclick
                                                                            ="clearValue('A0124','1')" value='1'
                                                                    text='良好' name='A0124' id='A0124'/></td>
                        <th align='left' style
                                ='width:120px'>婚姻状况<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'><input
                                class='mini-treeselect' required="true" parentField='parentid'
                                style="width:100%;background:#fff" url
                                        ='../table/fieldCode?fieldCode=BG' onbeforeshowpopup="oncheckbox('A0127')"
                                valueField='codeitemid'
                                textField='codeitemdesc' onnodeclick="clearValue('A0127','2')" value='2' text='已婚'
                                name='A0127' id
                                        ='A0127'/></td>
                        <th align='left' style='width:120px'>身高（ＣＭ）<span style="color:red">*</span></th>
                        <td align
                                    ='left' style='width:256px'><input class="mini-spinner" width="100%" required="true"
                                                                       minValue="0" maxValue
                                                                               ="250" name='C01SB' value='180'/></td>
                    </tr>
                    <tr>
                        <th align='left' style='width:120px'>血型<span style="color
:red">*</span></th>
                        <td align='left' style='width:256px'><input class='mini-treeselect' required="true"
                                                                    parentField='parentid'
                                                                    style="width:100%;background:#fff"
                                                                    url='../table/fieldCode?fieldCode=DI'
                                                                    onbeforeshowpopup
                                                                            ="oncheckbox('C0109')"
                                                                    valueField='codeitemid' textField='codeitemdesc'
                                                                    onnodeclick="clearValue('C0109'
,'2')" value='2' text='B型' name='C0109' id='C0109'/></td>
                        <th align='left' style='width:120px'>移动电话
                            <span style="color:red">*</span></th>
                        <td align='left' style='width:256px'><input class="mini-textbox"
                                                                    width="100%" required="true" name='C0104'
                                                                    value='18156087299'/></td>
                        <th align='left' style='width:120px'
                        >办公室电话
                        </th>
                        <td align='left' style='width:256px'><input class="mini-textbox" width="100%" required="false"
                                                                    name='H01T2' value='0555-4260106'/></td>
                    </tr>
                    <tr>
                        <th align='left' style='width:120px'>身份证号<span style
                                                                               ="color:red">*</span></th>
                        <td align='left' style='width:256px'><input class="mini-textbox" style="width
:100%;" required="true" name='A0177' value='34011119760930101x' enabled="false"/></td>
                        <th align='left'
                            style='width:120px'>身份证地址<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'>
                            <input class="mini-textbox" width="100%" required="true" name='C01SJ'
                                   value='安徽省合肥市蜀山区习友路香槟花园3幢404室'
                            /></td>
                        <th align='left' style='width:120px'>现住地址<span style="color:red">*</span></th>
                        <td align='left'
                            style='width:256px'><input class="mini-textbox" width="100%" required="true" name='H01SL'
                                                       value='安
徽省合肥市蜀山区习友路香槟花园3幢404室'/></td>
                    </tr>
                    <tr>
                        <th align='left' style='width:120px'>户口所在地<span style="color:red"
                        >*</span></th>
                        <td align='left' style='width:256px'><input class='mini-treeselect' required="true" parentField
                                ='parentid' style="width:100%;background:#fff" url='../table/fieldCode?fieldCode=AB'
                                                                    onbeforeshowpopup
                                                                            ="oncheckbox('A0171')"
                                                                    valueField='codeitemid' textField='codeitemdesc'
                                                                    onnodeclick="clearValue('A0171'
,'3412')" value='3412' text='安徽省阜阳市' name='A0171' id='A0171'/></td>
                        <th align='left' style='width:120px'
                        >户口性质<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'><input class='mini-treeselect'
                                                                    required="true" parentField='parentid'
                                                                    style="width:100%;background:#fff" url='../table/fieldCode?fieldCode
=HP' onbeforeshowpopup="oncheckbox('A0174')" valueField='codeitemid' textField='codeitemdesc' onnodeclick
                                                                            ="clearValue('A0174','12')" value='12'
                                                                    text='外埠城镇' name='A0174' id='A0174'/></td>
                        <th align='left' style
                                ='width:120px'>户口所在派出所
                        </th>
                        <td align='left' style='width:256px'><input class="mini-textbox" width="100
%" required="false" name='C01RT' value='安徽省阜阳市文峰派出所'/></td>
                    </tr>
                    <tr>
                        <th align='left' style='width:120px'
                        >籍贯<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'><input class='mini-treeselect'
                                                                    required="true" parentField='parentid'
                                                                    style="width:100%;background:#fff" url='../table/fieldCode?fieldCode
=AB' onbeforeshowpopup="oncheckbox('A0114')" valueField='codeitemid' textField='codeitemdesc' onnodeclick
                                                                            ="clearValue('A0114','3404')" value='3404'
                                                                    text='安徽省淮南市' name='A0114' id='A0114'/></td>
                        <th align='left'
                            style='width:120px'>档案关系所在地
                        </th>
                        <td align='left' style='width:256px'><input class="mini-textbox" width
                                ="100%" required="false" name='H01SP' value=''/></td>
                        <th align='left' style='width:120px'>参加工作时间<span
                                style="color:red">*</span></th>
                        <td align='left' style='width:256px'><input class='mini-datepicker'
                                                                    width="100%" required="true" name='A0141'
                                                                    value=1976-09-30T00:00:00/></td>
                    </tr>
                    <tr>
                        <th align='left'
                            style='width:120px'>进入集团时间<span style="color:red">*</span></th>
                        <td align='left' style='width:256px'
                        ><input class='mini-datepicker' width="100%" required="true" name='E0108'
                                value=2010-04-12T00:00:00
                        /></td>
                        <th align='left' style='width:120px'>到本单位时间<span style="color:red">*</span></th>
                        <td align='left'
                            style='width:256px'><input class='mini-datepicker' width="100%" required="true" name='C0183'
                                                       value
                                                               =2014-10-01T00:00:00/></td>
                        <th align='left' style='width:120px'>护照</th>
                        <td align='left' style='width
:256px'><input class="mini-textbox" width="100%" required="false" name='H01TQ' value=''/></td>
                    </tr>
                    <tr>
                        <th align='left' style='width:120px'>持有何种驾照</th>
                        <td align='left' style='width:256px'><input class
                                                                            ='mini-treeselect' required="false"
                                                                    parentField='parentid'
                                                                    onnodeclick="clearValue('C01SL','06')" url
                                                                            ='../table/fieldCode?fieldCode=YY'
                                                                    onbeforeshowpopup="oncheckbox('C01SL')"
                                                                    valueField='codeitemid'
                                                                    textField='codeitemdesc'
                                                                    style="width:100%;background:#fff" value='06'
                                                                    text='C1' name='C01SL' id='C01SL'
                        /></td>
                        <th align='left' style='width:120px'>爱好</th>
                        <td align='left' style='width:256px'><input class
                                                                            ="mini-textbox" width="100%"
                                                                    required="false" name='H01SJ' value=''/></td>
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
                                 editNextOnEnterKey="true" editNextRowCell="true" showPager="false" url="../table/gridData?tableName
=A04&personFlag=01&A0100=00002678&flag=01">
                                <div property="columns">
                                    <div type="indexcolumn"></div>
                                    <div
                                            type="checkcolumn"></div>
                                    <div name="A0435" field="A0435" headerAlign="center" allowSort="true">毕
                                        业学校<input property="editor" class="mini-textbox" style="width:100%;"
                                                  minWidth="200"/></div>
                                    <div name
                                                 ="A0444" field="A0444" headerAlign="center" allowSort="true">所学专业<input
                                            property="editor" class="mini-textbox"
                                            style="width:100%;" minWidth="200"/></div>
                                    <div name="A0430" field="A0430" allowSort="true" dateFormat
                                            ="yyyy-MM-dd" headerAlign="center">毕业时间<input property="editor"
                                                                                          class="mini-datepicker"
                                                                                          style="width
:100%;"/></div>
                                    <div type="treeselectcolumn" field="C0401" headerAlign="center">学历性质<input property
                                                                                                                       ="editor"
                                                                                                               class='mini-treeselect'
                                                                                                               url='../table/fieldCode?fieldCode=KF'
                                                                                                               valueField='codeitemid'
                                                                                                               textField
                                                                                                                       ='codeitemdesc'
                                                                                                               text='请选择'/>
                                    </div>
                                    <div type="treeselectcolumn" field="A0405" headerAlign="center">
                                        学历<input property="editor" class='mini-treeselect'
                                                 url='../table/fieldCode?fieldCode=YT' valueField
                                                         ='codeitemid' textField='codeitemdesc' text='请选择'/></div>
                                    <div type="treeselectcolumn" field="A0440"
                                         headerAlign="center">学位<input property="editor" class='mini-treeselect' url='../table/fieldCode?fieldCode
=AN' valueField='codeitemid' textField='codeitemdesc' text='请选择'/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class
                                ='a1' style='height:40px'>
                        <td colspan='6' style='padding:2px'>
                            <div style="width:1024px;">
                                <div class="mini-toolbar"
                                     style="border-bottom:0;padding:0px;">
                                    <table style="width:100%;">
                                        <tr>
                                            <td style="width:100%;text-align
:left"><b>外部工作经历<span style='color:red'>*</span></b>
                                                <div style="float: right;"></div>
                                            </td>
                                        </tr>
                                    </table
                                    >
                                </div>
                            </div>
                            <div id="A19" class="mini-datagrid" style="width:100%;height:200px;" allowSortColumn="false"
                                 idField="I9999" allowResize="false" allowCellEdit="false" allowCellSelect="true"
                                 multiSelect="true"
                                 editNextOnEnterKey="true" editNextRowCell="true" showPager="false" url="../table/gridData?tableName
=A19&personFlag=01&A0100=00002678&flag=01">
                                <div property="columns">
                                    <div type="indexcolumn"></div>
                                    <div
                                            type="checkcolumn"></div>
                                    <div name="A1905" field="A1905" allowSort="true" dateFormat="yyyy-MM-dd" headerAlign
                                            ="center">起始时间<input property="editor" class="mini-datepicker"
                                                                 style="width:100%;"/></div>
                                    <div name="A1910"
                                         field="A1910" allowSort="true" dateFormat="yyyy-MM-dd" headerAlign="center">
                                        终止时间<input property="editor"
                                                   class="mini-datepicker" style="width:100%;"/></div>
                                    <div name="A1915" field="A1915" headerAlign="center"
                                         allowSort="true">工作单位<input property="editor" class="mini-textbox"
                                                                     style="width:100%;" minWidth="200"
                                    /></div>
                                    <div name="A1920" field="A1920" headerAlign="center" allowSort="true">担任职务<input
                                            property
                                                    ="editor" class="mini-textbox" style="width:100%;" minWidth="200"/>
                                    </div>
                                    <div name="A1925" field="A1925"
                                         headerAlign="center" allowSort="true">证明人<input property="editor"
                                                                                         class="mini-textbox" style="width
:100%;" minWidth="200"/></div>
                                    <div name="A1926" field="A1926" headerAlign="center" allowSort="true"
                                    >离职原因<input property="editor" class="mini-textbox" style="width:100%;"
                                                minWidth="200"/></div>
                                </div
                                >
                            </div>
                        </td>
                    </tr>
                    <tr class='a1' style='height:40px'>
                        <td colspan='6' style='padding:2px'>
                            <div style="width
:1024px;">
                                <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
                                    <table style="width:100%;">
                                        <tr>
                                            <td style="width:100%;text-align:left"><b>家庭情况</b>
                                                <div style="float: right;"></div>
                                            </td>
                                        </tr>
                                    </table
                                    >
                                </div>
                            </div>
                            <div id="A79" class="mini-datagrid" style="width:100%;height:200px;" allowSortColumn="false"
                                 idField="I9999" allowResize="false" allowCellEdit="false" allowCellSelect="true"
                                 multiSelect="true"
                                 editNextOnEnterKey="true" editNextRowCell="true" showPager="false" url="../table/gridData?tableName
=A79&personFlag=01&A0100=00002678&flag=01">
                                <div property="columns">
                                    <div type="indexcolumn"></div>
                                    <div
                                            type="checkcolumn"></div>
                                    <div name="A7905" field="A7905" headerAlign="center" allowSort="true">成
                                        员姓名<input property="editor" class="mini-textbox" style="width:100%;"
                                                  minWidth="200"/></div>
                                    <div type
                                                 ="treeselectcolumn" field="A7910" headerAlign="center">与本人关系<input
                                            property="editor" class='mini-treeselect'
                                            url='../table/fieldCode?fieldCode=AS' valueField='codeitemid'
                                            textField='codeitemdesc' text='请选择' /
                                        >
                                    </div>
                                    <div name="A7926" field="A7926" headerAlign="center" allowSort="true">电话号码<input
                                            property="editor"
                                            class="mini-textbox" style="width:100%;" minWidth="200"/></div>
                                    <div name="A7927" field="A7927" headerAlign
                                            ="center" allowSort="true">住址<input property="editor" class="mini-textbox"
                                                                                style="width:100%;" minWidth
                                                                                        ="200"/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class='a1' style='height:40px'>
                        <td colspan='6' style='padding
:2px'>
                            <div style="width:1024px;">
                                <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
                                    <table
                                            style="width:100%;">
                                        <tr>
                                            <td style="width:100%;text-align:left"><b>紧急联系人</b>
                                                <div style="float: right
;"></div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div id="AD3" class="mini-datagrid" style="width:100%;height:200px
;" allowSortColumn="false" idField="I9999" allowResize="false" allowCellEdit="false" allowCellSelect
                                    ="true" multiSelect="true" editNextOnEnterKey="true" editNextRowCell="true"
                                 showPager="false" url="
../table/gridData?tableName=AD3&personFlag=01&A0100=00002678&flag=01">
                                <div property="columns">
                                    <div type
                                                 ="indexcolumn"></div>
                                    <div type="checkcolumn"></div>
                                    <div name="CD301" field="CD301" headerAlign="center"
                                         allowSort="true">紧急联系人姓名<input property="editor" class="mini-textbox"
                                                                        style="width:100%;" minWidth
                                                                                ="200"/></div>
                                    <div name="CD302" field="CD302" headerAlign="center" allowSort="true">紧急联系人电话<input
                                            property="editor" class="mini-textbox" style="width:100%;" minWidth="200"/>
                                    </div>
                                    <div name="CD303"
                                         field="CD303" headerAlign="center" allowSort="true">紧急联系人地址<input
                                            property="editor" class="mini-textbox"
                                            style="width:100%;" minWidth="200"/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class='a1' style='height:40px'
                    >
                        <td colspan='6' style='padding:2px'>
                            <div style="width:1024px;">
                                <div class="mini-toolbar" style="border-bottom
:0;padding:0px;">
                                    <table style="width:100%;">
                                        <tr>
                                            <td style="width:100%;text-align:left"><b>语言能力</b>
                                                <div
                                                        style="float: right;"></div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div id="A34" class="mini-datagrid" style
                                    ="width:100%;height:200px;" allowSortColumn="false" idField="I9999"
                                 allowResize="false" allowCellEdit
                                         ="false" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true"
                                 editNextRowCell="true"
                                 showPager="false"
                                 url="../table/gridData?tableName=A34&personFlag=01&A0100=00002678&flag=01">
                                <div property
                                             ="columns">
                                    <div type="indexcolumn"></div>
                                    <div type="checkcolumn"></div>
                                    <div type="treeselectcolumn" field
                                            ="C3404" headerAlign="center">语种<input property="editor"
                                                                                   class='mini-treeselect' url='../table/fieldCode
?fieldCode=ZO' valueField='codeitemid' textField='codeitemdesc' text='请选择'/></div>
                                    <div type="treeselectcolumn"
                                         field="C35A0" headerAlign="center">熟练程度<input property="editor"
                                                                                       class='mini-treeselect' url='../table
/fieldCode?fieldCode=YL' valueField='codeitemid' textField='codeitemdesc' text='请选择'/></div>
                                    <div name
                                                 ="C3402" field="C3402" headerAlign="center" allowSort="true">证书名称<input
                                            property="editor" class="mini-textbox"
                                            style="width:100%;" minWidth="200"/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class='a1' style='height:40px'
                    >
                        <td colspan='6' style='padding:2px'>
                            <div style="width:1024px;">
                                <div class="mini-toolbar" style="border-bottom
:0;padding:0px;">
                                    <table style="width:100%;">
                                        <tr>
                                            <td style="width:100%;text-align:left"><b>职业资格</b>
                                                <div
                                                        style="float: right;"></div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div id="AZ7" class="mini-datagrid" style
                                    ="width:100%;height:200px;" allowSortColumn="false" idField="I9999"
                                 allowResize="false" allowCellEdit
                                         ="false" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true"
                                 editNextRowCell="true"
                                 showPager="false"
                                 url="../table/gridData?tableName=AZ7&personFlag=01&A0100=00002678&flag=01">
                                <div property
                                             ="columns">
                                    <div type="indexcolumn"></div>
                                    <div type="checkcolumn"></div>
                                    <div name="CZ701" field="CZ701"
                                         headerAlign="center" allowSort="true">职业资格名称<input property="editor"
                                                                                            class="mini-textbox" style="width
:100%;" minWidth="200"/></div>
                                    <div name="CZ702" field="CZ702" allowSort="true" dateFormat="yyyy-MM-dd"
                                         headerAlign="center">获得时间<input property="editor" class="mini-datepicker"
                                                                         style="width:100%;"/></div
                                    >
                                    <div name="CZ703" field="CZ703" headerAlign="center" allowSort="true">证书号<input
                                            property="editor"
                                            class="mini-textbox" style="width:100%;" minWidth="200"/></div>
                                    <div name="CZ704" field="CZ704" headerAlign
                                            ="center" allowSort="true">颁发机构<input property="editor" class="mini-textbox"
                                                                                  style="width:100%;" minWidth
                                                                                          ="200"/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class='a1' style='height:40px'>
                        <td colspan='6' style='padding
:2px'>
                            <div style="width:1024px;">
                                <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
                                    <table
                                            style="width:100%;">
                                        <tr>
                                            <td style="width:100%;text-align:left"><b>专业技术职称</b>
                                                <div style="float: right
;"></div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div id="A10" class="mini-datagrid" style="width:100%;height:200px
;" allowSortColumn="false" idField="I9999" allowResize="false" allowCellEdit="false" allowCellSelect
                                    ="true" multiSelect="true" editNextOnEnterKey="true" editNextRowCell="true"
                                 showPager="false" url="
../table/gridData?tableName=A10&personFlag=01&A0100=00002678&flag=01">
                                <div property="columns">
                                    <div type
                                                 ="indexcolumn"></div>
                                    <div type="checkcolumn"></div>
                                    <div type="treeselectcolumn" field="A1005" headerAlign
                                            ="center">专业技术资格名称<input property="editor" class='mini-treeselect' url='../table/fieldCode?fieldCode
=AJ' valueField='codeitemid' textField='codeitemdesc' text='请选择'/></div>
                                    <div type="treeselectcolumn"
                                         field="C1005" headerAlign="center">职称等级<input property="editor"
                                                                                       class='mini-treeselect' url='../table
/fieldCode?fieldCode=QC' valueField='codeitemid' textField='codeitemdesc' text='请选择'/></div>
                                    <div name
                                                 ="A1015" field="A1015" allowSort="true" dateFormat="yyyy-MM-dd"
                                         headerAlign="center">取得资格时间<input property
                                                                                   ="editor" class="mini-datepicker"
                                                                           style="width:100%;"/></div>
                                    <div type="treeselectcolumn" field="A1010"
                                         headerAlign="center">取得资格途径 <input property="editor" class='mini-treeselect'
                                                                            url='../table/fieldCode
?fieldCode=BY' valueField='codeitemid' textField='codeitemdesc' text='请选择'/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class='a1' style='height:40px'>
                        <td colspan='6' style='padding:2px'>
                            <div style="width:1024px
;">
                                <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
                                    <table style="width:100%;">
                                        <tr>
                                            <td
                                                    style="width:100%;text-align:left"><b>培训经历</b>
                                                <div style="float: right;"></div>
                                            </td>
                                        </tr>
                                    </table>
                                </div
                                >
                            </div>
                            <div id="A37" class="mini-datagrid" style="width:100%;height:200px;" allowSortColumn="false"
                                 idField="I9999" allowResize="false" allowCellEdit="false" allowCellSelect="true"
                                 multiSelect="true"
                                 editNextOnEnterKey="true" editNextRowCell="true" showPager="false" url="../table/gridData?tableName
=A37&personFlag=01&A0100=00002678&flag=01">
                                <div property="columns">
                                    <div type="indexcolumn"></div>
                                    <div
                                            type="checkcolumn"></div>
                                    <div name="H3702" field="H3702" headerAlign="center" allowSort="true">培
                                        训机构<input property="editor" class="mini-textbox" style="width:100%;"
                                                  minWidth="200"/></div>
                                    <div name
                                                 ="A3715" field="A3715" allowSort="true" dateFormat="yyyy-MM-dd"
                                         headerAlign="center">培训开始时间<input property
                                                                                   ="editor" class="mini-datepicker"
                                                                           style="width:100%;"/></div>
                                    <div name="A3720" field="A3720" allowSort
                                            ="true" dateFormat="yyyy-MM-dd" headerAlign="center">培训结束时间<input
                                            property="editor" class="mini-datepicker"
                                            style="width:100%;"/></div>
                                    <div name="A3730" field="A3730" headerAlign="center" allowSort="true"
                                    >培训内容<input property="editor" class="mini-textbox" style="width:100%;"
                                                minWidth="200"/></div>
                                    <div name
                                                 ="H3703" field="H3703" headerAlign="center" allowSort="true">获得证书<input
                                            property="editor" class="mini-textbox"
                                            style="width:100%;" minWidth="200"/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class='a1' style='height:40px'
                    >
                        <td colspan='6' style='padding:2px'>
                            <div style="width:1024px;">
                                <div class="mini-toolbar" style="border-bottom
:0;padding:0px;">
                                    <table style="width:100%;">
                                        <tr>
                                            <td style="width:100%;text-align:left"><b>奖励信息</b>
                                                <div
                                                        style="float: right;"></div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div id="A28" class="mini-datagrid" style
                                    ="width:100%;height:200px;" allowSortColumn="false" idField="I9999"
                                 allowResize="false" allowCellEdit
                                         ="false" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true"
                                 editNextRowCell="true"
                                 showPager="false"
                                 url="../table/gridData?tableName=A28&personFlag=01&A0100=00002678&flag=01">
                                <div property
                                             ="columns">
                                    <div type="indexcolumn"></div>
                                    <div type="checkcolumn"></div>
                                    <div name="E2807" field="E2807"
                                         allowSort="true" dateFormat="yyyy-MM-dd" headerAlign="center">奖励时间<input
                                            property="editor" class="mini-datepicker"
                                            style="width:100%;"/></div>
                                    <div type="treeselectcolumn" field="E2811" headerAlign="center">奖励级别<input
                                            property="editor" class='mini-treeselect'
                                            url='../table/fieldCode?fieldCode=MI' valueField='codeitemid'
                                            textField='codeitemdesc' text='请选择'/></div>
                                    <div name="E2803" field="E2803" headerAlign="center" allowSort
                                            ="true">奖励名称<input property="editor" class="mini-textbox"
                                                               style="width:100%;" minWidth="200"/></div
                                    >
                                    <div type="treeselectcolumn" field="E2805" headerAlign="center">奖励原因<input
                                            property="editor" class
                                            ='mini-treeselect' url='../table/fieldCode?fieldCode=HQ'
                                            valueField='codeitemid' textField='codeitemdesc'
                                            text='请选择'/></div>
                                    <div name="E2809" field="E2809" headerAlign="center" allowSort="true">奖励批准单位<input
                                            property="editor" class="mini-textbox" style="width:100%;" minWidth="200"/>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</center>
<script>mini.parse();
var gridA04 = mini.get("A04");
gridA04
        .load();
function addRowA04() {
    var newRow = {name: "New Row"};
    gridA04.addRow(newRow, 0);
    gridA04
            .beginEditCell(newRow, "LoginName");
}
function removeRowA04() {
    var rows = gridA04.getSelecteds();
    if
    (rows.length > 0) {
        gridA04.removeRows(rows, true);
    }
}
function saveDataA04() {
    var rows = gridA04.findRows
    (function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrA04
        ",data: { data: json },type: "post
        ",success: function (text) {  gridA04.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridA04.on("celleditenter", function
        (e) {
    var index = gridA04.indexOf(e.record);
    if (index == gridA04.getData().length - 1) {
        var row =
        {};
        gridA04.addRow(row)
    }
});
gridA04.on("beforeload", function (e) {
    if (gridA04.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsA04 = gridA04.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonA04 = mini.encode(oldRowsA04);
var gridA19 = mini.get("A19");
gridA19.load();
function
addRowA19() {
    var newRow = {name: "New Row"};
    gridA19.addRow(newRow, 0);
    gridA19.beginEditCell(newRow
            , "LoginName");
}
function removeRowA19() {
    var rows = gridA19.getSelecteds();
    if (rows.length > 0) {
        gridA19
                .removeRows(rows, true);
    }
}
function saveDataA19() {
    var rows = gridA19.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrA19
        ",data: { data: json },type: "post
        ",success: function (text) {  gridA19.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridA19.on("celleditenter", function
        (e) {
    var index = gridA19.indexOf(e.record);
    if (index == gridA19.getData().length - 1) {
        var row =
        {};
        gridA19.addRow(row)
    }
});
gridA19.on("beforeload", function (e) {
    if (gridA19.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsA19 = gridA19.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonA19 = mini.encode(oldRowsA19);
var gridA79 = mini.get("A79");
gridA79.load();
function
addRowA79() {
    var newRow = {name: "New Row"};
    gridA79.addRow(newRow, 0);
    gridA79.beginEditCell(newRow
            , "LoginName");
}
function removeRowA79() {
    var rows = gridA79.getSelecteds();
    if (rows.length > 0) {
        gridA79
                .removeRows(rows, true);
    }
}
function saveDataA79() {
    var rows = gridA79.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrA79
        ",data: { data: json },type: "post
        ",success: function (text) {  gridA79.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridA79.on("celleditenter", function
        (e) {
    var index = gridA79.indexOf(e.record);
    if (index == gridA79.getData().length - 1) {
        var row =
        {};
        gridA79.addRow(row)
    }
});
gridA79.on("beforeload", function (e) {
    if (gridA79.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsA79 = gridA79.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonA79 = mini.encode(oldRowsA79);
var gridAD3 = mini.get("AD3");
gridAD3.load();
function
addRowAD3() {
    var newRow = {name: "New Row"};
    gridAD3.addRow(newRow, 0);
    gridAD3.beginEditCell(newRow
            , "LoginName");
}
function removeRowAD3() {
    var rows = gridAD3.getSelecteds();
    if (rows.length > 0) {
        gridAD3
                .removeRows(rows, true);
    }
}
function saveDataAD3() {
    var rows = gridAD3.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrAD3
        ",data: { data: json },type: "post
        ",success: function (text) {  gridAD3.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridAD3.on("celleditenter", function
        (e) {
    var index = gridAD3.indexOf(e.record);
    if (index == gridAD3.getData().length - 1) {
        var row =
        {};
        gridAD3.addRow(row)
    }
});
gridAD3.on("beforeload", function (e) {
    if (gridAD3.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsAD3 = gridAD3.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonAD3 = mini.encode(oldRowsAD3);
var gridA34 = mini.get("A34");
gridA34.load();
function
addRowA34() {
    var newRow = {name: "New Row"};
    gridA34.addRow(newRow, 0);
    gridA34.beginEditCell(newRow
            , "LoginName");
}
function removeRowA34() {
    var rows = gridA34.getSelecteds();
    if (rows.length > 0) {
        gridA34
                .removeRows(rows, true);
    }
}
function saveDataA34() {
    var rows = gridA34.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrA34
        ",data: { data: json },type: "post
        ",success: function (text) {  gridA34.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridA34.on("celleditenter", function
        (e) {
    var index = gridA34.indexOf(e.record);
    if (index == gridA34.getData().length - 1) {
        var row =
        {};
        gridA34.addRow(row)
    }
});
gridA34.on("beforeload", function (e) {
    if (gridA34.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsA34 = gridA34.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonA34 = mini.encode(oldRowsA34);
var gridAZ7 = mini.get("AZ7");
gridAZ7.load();
function
addRowAZ7() {
    var newRow = {name: "New Row"};
    gridAZ7.addRow(newRow, 0);
    gridAZ7.beginEditCell(newRow
            , "LoginName");
}
function removeRowAZ7() {
    var rows = gridAZ7.getSelecteds();
    if (rows.length > 0) {
        gridAZ7
                .removeRows(rows, true);
    }
}
function saveDataAZ7() {
    var rows = gridAZ7.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrAZ7
        ",data: { data: json },type: "post
        ",success: function (text) {  gridAZ7.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridAZ7.on("celleditenter", function
        (e) {
    var index = gridAZ7.indexOf(e.record);
    if (index == gridAZ7.getData().length - 1) {
        var row =
        {};
        gridAZ7.addRow(row)
    }
});
gridAZ7.on("beforeload", function (e) {
    if (gridAZ7.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsAZ7 = gridAZ7.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonAZ7 = mini.encode(oldRowsAZ7);
var gridA10 = mini.get("A10");
gridA10.load();
function
addRowA10() {
    var newRow = {name: "New Row"};
    gridA10.addRow(newRow, 0);
    gridA10.beginEditCell(newRow
            , "LoginName");
}
function removeRowA10() {
    var rows = gridA10.getSelecteds();
    if (rows.length > 0) {
        gridA10
                .removeRows(rows, true);
    }
}
function saveDataA10() {
    var rows = gridA10.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrA10
        ",data: { data: json },type: "post
        ",success: function (text) {  gridA10.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridA10.on("celleditenter", function
        (e) {
    var index = gridA10.indexOf(e.record);
    if (index == gridA10.getData().length - 1) {
        var row =
        {};
        gridA10.addRow(row)
    }
});
gridA10.on("beforeload", function (e) {
    if (gridA10.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsA10 = gridA10.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonA10 = mini.encode(oldRowsA10);
var gridA37 = mini.get("A37");
gridA37.load();
function
addRowA37() {
    var newRow = {name: "New Row"};
    gridA37.addRow(newRow, 0);
    gridA37.beginEditCell(newRow
            , "LoginName");
}
function removeRowA37() {
    var rows = gridA37.getSelecteds();
    if (rows.length > 0) {
        gridA37
                .removeRows(rows, true);
    }
}
function saveDataA37() {
    var rows = gridA37.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrA37
        ",data: { data: json },type: "post
        ",success: function (text) {  gridA37.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridA37.on("celleditenter", function
        (e) {
    var index = gridA37.indexOf(e.record);
    if (index == gridA37.getData().length - 1) {
        var row =
        {};
        gridA37.addRow(row)
    }
});
gridA37.on("beforeload", function (e) {
    if (gridA37.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsA37 = gridA37.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonA37 = mini.encode(oldRowsA37);
var gridA28 = mini.get("A28");
gridA28.load();
function
addRowA28() {
    var newRow = {name: "New Row"};
    gridA28.addRow(newRow, 0);
    gridA28.beginEditCell(newRow
            , "LoginName");
}
function removeRowA28() {
    var rows = gridA28.getSelecteds();
    if (rows.length > 0) {
        gridA28
                .removeRows(rows, true);
    }
}
function saveDataA28() {
    var rows = gridA28.findRows(function (row) {
        if (row._id != "") return true;
    });
    var json = mini.encode(rows);
    $.ajax({
        url: "../table/empSavOtherData?A0100=00002678&tableName
                = UsrA28
        ",data: { data: json },type: "post
        ",success: function (text) {  gridA28.reload();},error: function
                (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText);
        }
    });
}
gridA28.on("celleditenter", function
        (e) {
    var index = gridA28.indexOf(e.record);
    if (index == gridA28.getData().length - 1) {
        var row =
        {};
        gridA28.addRow(row)
    }
});
gridA28.on("beforeload", function (e) {
    if (gridA28.getChanges().length
            > 0) {
        if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
            e.cancel = true;
        }
    }
});
var oldRowsA28 = gridA28.findRows
(function (row) {
    if (row._id != '') return true;
});
var oldJsonA28 = mini.encode(oldRowsA28);
var oldData = new mini.Form('#A01').getData();
var oldJson
        = mini.encode(oldData);</script>
</body>
</html>
