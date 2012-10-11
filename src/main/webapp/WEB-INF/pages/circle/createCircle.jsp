<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建圈子</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<script type="text/javascript" src="${path }js/jquery.form.js"></script>
<script type="text/javascript"  src="${path }js/circle/circle.js"></script>
<script type="text/javascript">
	var web_path='${path}';
</script>
</head>
<body>
<div class="warp">
<div class="av">
	<div class="top">
    <div class="right">
          <div class="top_tool">
            <ul>
              <li id="tool_1"><a>装扮</a></li>
              <li id="tool_2"><a>设置</a></li>
              <li id="tool_3"><a>消息
                <ul id="xinxi">
                  <li><label><a href="http://www.baidu.com" target="_blank">查看信箱</a></label>(<span>22</span>)</li>
                  <li><a>查看私信</a>(<span>33</span>)</li>
                  <li><a>系统通知</a>(<span>44</span>)</li>
                </ul>
                </a></li>
              <li id="tool_4"><a href="#">登录</a></li>
              <li id="tool_5"><a href="#">退出</a></li>
            </ul>
          </div>
          <div class="clear"></div>
        </div>
    </div>
</div>
    <div class="head">
      <div class="top">
        <div class="left">
          <div class="logo"><a href="http://www.baidu.com"><img src="${path }images/logo.jpg" /></a></div>
        </div>
        <div class="middle">
            <div class="search">
                <input type="text" value="输入关键字" class="focus1" />
                <span><input type="button" value="搜索" /></span><br />
                <div class="clear"></div>
                <ul>
                  <li><a href="#">新闻</a></li>
                  <li><a>奥运</a></li>
                  <li><a>音乐</a></li>
                  <li><a>视频</a></li>
                  <li><a>美图</a></li>
                  <li><a>交友</a></li>
                  <li><a>美图</a></li>
                  <li><a>交友</a></li>
                  <li><a>美图</a></li>
                  <li><a>奥运</a></li>
                  <li><a>音乐</a></li>
                  <li><a>视频</a></li>
                  <li><a>美图</a></li>
                </ul>
              </div>
        </div> 
      </div>
      <div class="clear"></div>
    </div>
    <div class="nav">
        <ul>
          <li><a href="${path }">首 页</a>|</li>
          <li><a href="${path }libiary">社区阅览室</a>|</li>
          <li><a href="${path }blogMaster">博文达人</a>|</li>
          <li><a href="${path }study">我的书房</a>|</li>
          <li><a href="${path }circle" class="active">圈 子</a>|</li>
          <li><a href="${path }resourceCenter">企业资源中心</a></li>
        </ul>
      </div>
<div class="cjqz" style="hei1ght:1000px;">  
<h2>创建圈子</h2>	
<form id="circleForm"  action="${path }circle/saveCircle"  method="post">
<input type="hidden" id="masterReason" name="registMasterReason" />
	<table style="margin-top:5px">
    	<tr>
        	<td width="10%" class="title_font2">&nbsp;圈子名称：</td>
            <td width="90%" style="text-align: left;"><input type="text" name="circleEntity.circleName" style="margin-left:3px;width:225px;"/><em style=" background:url(../images/bg_group_icon.gif) no-repeat -21px -267px; padding:2px 12px;"></em><span>（限汉字、字母、数字和下划线）</span></td>
        </tr>
        <tr>
        	<td class="title_font2">&nbsp;所属分类：</td>
            <td>
            	<select name="circleEntity.category"  onChange="getSecCategory(this.value)">
            		<c:forEach var="item" items="${category }">
                		<option value="${item.id }">${item.categoryName }</option>            
            		</c:forEach>
                </select>&nbsp;
                <select name="circleEntity.secCategory" id="secCategory">
                	<c:forEach var="item" items="${secCategory }">
                		<option value="${item.id }">${item.categoryName }</option>            
            		</c:forEach>
                </select>&nbsp;&nbsp;&nbsp;<em style=" background:url(../images/bg_group_icon.gif) no-repeat -21px -208px; padding:2px 12px;"></em>
            </td>
        </tr>
        <tr>
        	<td align="right" valign="top" class="title_font2">&nbsp;圈子属性：</td>
            <td style="text-align:left">
            	<input type="radio" name="circleEntity.circleType" checked value="PUBLIC"/>&nbsp;<strong style="font-weight:bold">公开圈子</strong>&nbsp;<span class="title_font3">所有人都可以浏览圈子内容并发帖</span><br/>
                <input type="radio" name="circleEntity.circleType" value="PROTECT"/>&nbsp;<strong style="font-weight:bold">会员圈子</strong>&nbsp;<span class="title_font3">所有人都可以浏览圈子内容，但只有加入圈子的会员可以发帖</span><br/>
                <input type="radio" name="circleEntity.circleType" value="PRIVATE"/>&nbsp;<strong style="font-weight:bold">私密圈子</strong>&nbsp;<span class="title_font3">只有加入圈子的会员，可以浏览圈子内容并发帖</span><br/>
            </td>
        </tr>
         <tr>
        	<td align="right" class="title_font2">&nbsp;申请圈主：</td>
            <td class="title_font3">
            	<input type="checkbox" id="registMaster"   name="registMaster" onclick="registerHostInfo();"/>同时申请为圈主
            </td>
        </tr>
        <tr>
        	<td style="font-size:16px; text-align:center">圈 馆：</td>
            <td style="font-size:16px;"><input type="radio" name="circleEntity.haveLibiary"  value="true" style="float:left" />拥有圈子文馆<br />
            													<input type="radio" name="circleEntity.haveLibiary"  value="false" style="float:left"/>不拥有圈子文馆</td>
        </tr>
	</table>
	</form>
	<form id="realInfoForm" action="${path }circle/saveUserRealInfo" method="post">
    <!-- 填写注册圈主信息-->
    <table id="registerHostInfo">
    	<tr>
            <td id="asd" class="disp" style="displ1ay:inline-block">
            	<table style="margin-top:5px" class="disp">
                	<tr>
                    	<td colspan="2" class="title_font3"><div style=" height:30px;line-height:30px;">您的个人信息仅供紧急联系使用，我们公司会严格保密。填写完整个人信息及申请理由将有助于您的通过率。带<font color="red">*</font>为必填项。</div></td>
                    </tr>
                    <tr>
                    	<td width="12%" class="title_font2"><font color="red">*</font>&nbsp;申请理由：</td>
                        <td width="88%">
                        	<textarea id="reason" cols="50" rows="6"></textarea>
                        </td>
                    </tr>
                    <tr>
                    	<td class="title_font2"><font color="red">*</font>&nbsp;QQ/MSN：</td>
                        <td>
                        	<input type="text" name="MSNorQQ" style="width:400px;"/>&nbsp;&nbsp;<em style=" background:url(../images/bg_group_icon.gif) no-repeat -21px -267px; padding:2px 12px;"></em>
                        </td>
                    </tr>
                    <tr>
                    	<td class="title_font2"><font color="red">*</font>&nbsp;真实姓名：</td>
                        <td>
                        	<input type="text" name="realName" style="width:400px;"/>&nbsp;&nbsp;<em style=" background:url(images/bg_group_icon.gif) no-repeat -21px -267px; padding:2px 12px;"></em>
                        </td>
                    </tr><tr>
                    	<td class="title_font2"><font color="red">*</font>&nbsp;身份证号：</td>
                        <td>
                        	<input type="text" name="idCardNum" style="width:400px;"/>
                        </td>
                    </tr>
                    <tr class="title_font2">
                    	<td style="font-size:14px;text-align:center"><font color="red">*</font>&nbsp;联系电话：</td>
                        <td>
                        	<input type="text" name="phoneNum" style="width:400px;"/>
                        </td>
                    </tr>
                    <tr class="title_font2">
                    	<td style="font-size:14px;text-align:center"><font color="red">*</font>&nbsp;现所在地：</td>
                        <td>
                        	<select name="province">
                            	<option value="0" checked>&nbsp;省/市</option>
                            </select>
                            <select name="city">
                            	<option value="0" checked>&nbsp;地区/市</option>
                            </select>
                            <input type="text" name="address" style="width:232px;"/>
                        </td>
                    </tr>
                    <tr>
                    	<td><font color="red">&nbsp;</td>
                        <td class="title_font3">
                        	<input type="checkbox" name="acceptHost"/>我已阅读并接受<a href="#" class="a_no_de">圈子圈主协议</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
    </form>
    <!-- -验证码以下-->
    <div class="clear"></div>
    <table style="margin-top:5px">
    	<tr>
        	<td width="10%" align="right" valign="top" class="title_font2">&nbsp;验证码：</td>
            <td width="90%" class="title_font3" valign="middle">
            	<input type="text" name="checkNum" style="width:65px;"/>&nbsp;<img src="images/captcha.jpg" width="60px" height="15px"/>&nbsp;<a href="#" class="a_no_de">换一换</a>
            </td>
        </tr>
        <tr>
        	<td align="right" valign="top">&nbsp;</td>
            <td class="title_font3">
            	<input type="checkbox" name="acceptUser">同意<a href="#" class="a_no_de">圈子用户协议</a>
            </td>
        </tr>
         <tr>
        	<td align="right" valign="top">&nbsp;</td>
            <td class="title_font3">
            	<a href="#" style="float:left; margin-left:3px" onclick="submitForm();return false;"><img src="${path }images/bg_group_btn.jpg" width="98px" height="30px" border="0"/></a><a href="#" class="a_no_de">圈子帮助</a>
            </td>
        </tr>
      </table>
      
</div>
    
   
    <div class="clear"></div>
    <div class="foot">
    	<div class="nav_btm">
        	<ul>
            	<li><a href="#">服务条款</a>|</li>
                <li><a href="#">设博文馆为首页</a>|</li>
                <li><a href="#">留言交流</a>|</li>
                <li><a href="#">联系我们</a>|</li>
                <li><a href="#">友情链接</a>|</li>
                <li><a href="#">管理平台</a></li>
            </ul>
        </div>
        <div class="banq">
        	<div class="lin1">主办单位：福建省民政厅 中国电信福建公司</div>
            <div class="lin2">[电信及增值业务经营许可证：闽ICP备11020745号]</div>
            <div class="lin3">Copyright© 2007—2011 中国电信福建分公司 版权所有互联网违法和不良信息举报中心</div>
        </div>
    </div>
</div>
</body>
</html>