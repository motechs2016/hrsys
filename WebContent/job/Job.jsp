<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dlnu.hrsys.util.TypeUtil" import="dlnu.hrsys.util.type.entity.*" %>
<%
String path = request.getContextPath();

String ptname = "员工管理平台";

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

request.setAttribute("typeUtil", TypeUtil.getInstance());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=ptname %>添加新岗位信息</title>
	<jsp:include page="../import.jsp" />
</head>
<body>
<jsp:include page="../head.jsp" />
<form action="<%=path%>/JobServlet?flag=add" method="post">
<table border="0" cellpadding="0" cellspacing="0" width="966" align="center">
<tr height="57">
<td width="9" background="<%=path %>/images/regimages/reg_title1.jpg"></td>
<td width="944" background="<%=path %>/images/regimages/reg_title2.jpg"  style="line-height: 57px;text-indent: 45px;">
<div style="font-size: 16px;font-family: Microsoft YaHei, 宋体, Segoe UI, verdana, arial;color: #fefefe">添加新岗位</div>
</td>
<td width="13" background="<%=path %>/images/regimages/reg_title3.jpg"></td>
</tr>
<tr>
<td width="9" background="<%=path %>/images/regimages/reg_left.jpg"></td>
<td width="944">
		<div id="regtddiv">
		<div style="margin: 5px;text-align: right;color: #666666;font-family: 宋体">注意：带有&nbsp;<font color="red">*</font>&nbsp;号的必须填写</div>
		<fieldset>
		<legend style="font-family: '宋体';color:#007BBB ">添加岗位信息</legend>
		<div>
		<table border="0" style="line-height: 32px;" align="center" cellpadding="0" cellspacing="0">
		
		<tr>
		<td style="width: 150px;padding-right: 10px;" align="right"><em>*</em>岗位名称</td>
		<td style="padding-left: 10px;"><input type="text" style="width: 300px;" name="name" ></td>
		<td style="padding-left: 10px; color: #808080;font-size: 12px;"><label style="padding-left: 5px;color: red"></label> </td>
		</tr>
		<tr>
		<td style="width: 150px;padding-right: 10px;" align="right"><em>*</em>岗位类型</td>
		<td nowrap="nowrap" colspan="2" style="padding-left: 10px;">
		<select name="type_id" >
		<!--option value="0">管理</option>
   		<option value="1">技术</option>
   		<option value="2">营销</option>
   		<option value="3">市场</option-->
   			<c:forEach items="${typeUtil.jobTypeGroup}" var="item">
				<option value="${item.id}">${item.name}</option>
			</c:forEach>
		</select>
		</td>
		</tr>
		
		<tr>
		<td style="width: 150px;padding-right: 10px;" align="right">岗位编制</td>
		<td style="padding-left: 10px; width: 440px"><input type="text" style="width: 300px;" name="size" placeholder="留空不限制"></td>
		<td style="padding-left: 10px; color: #808080;font-size: 12px;"><label style="padding-left: 5px;color: red"  id="companyphone_tit"></label> </td>
		</tr>
		
		</table>
		</div>
        </fieldset>
		<div style="height: 80px;text-align: center;vertical-align: middle;">
			<input type="submit" value="提交" style="position: relative;top: 30%" class="regbtn" onmouseover="this.className='regbtn_hover'" onmouseout="this.className='regbtn'">
			<input id="returnbtn"  type="button" value="返回" onclick="history.back()" style="position: relative;top: 30%" class="regbtn" onmouseover="this.className='regbtn_hover'" onmouseout="this.className='regbtn'">
		</div>
		</div>
</td>
<td width="13" background="<%=path %>/images/regimages/reg_right.jpg"></td>
</tr>
<tr height="16">
<td width="9" background="<%=path %>/images/regimages/reg_bottom1.jpg"></td>
<td width="944" background="<%=path %>/images/regimages/reg_bottom2.jpg"></td>
<td width="13" background="<%=path %>/images/regimages/reg_bottom3.jpg"></td>
</tr>
</table>
</form>              


<center>
<jsp:include page="../foot.jsp"></jsp:include>
</center>

</body>
</html>