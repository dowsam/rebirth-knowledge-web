<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/index.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<script type="text/javascript" src="${path }js/banner.js"></script>
<script type="text/javascript" src="${path }js/user/register.js"></script>
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
          <li><a href="index.html" class="active">首 页</a>|</li>
          <li><a href="yls.html">社区阅览室</a>|</li>
          <li><a href="bwdr.html">博文达人</a>|</li>
          <li><a href="shufang.html">我的书房</a>|</li>
          <li><a href="quanzi.html">圈 子</a>|</li>
          <li><a href="zyzx.html">企业资源中心</a></li>
        </ul>
      </div>
    <div class="zc_warp">
    <form id="userForm" method="post" action="${path }system/sysUser">
	<div class="user_info">
    	<div class="yhm"><div class="zc_tit"><em>*</em>我的邮箱：<input type="text"  id="email" name="email"/></div><span id="emailError">请输入常用邮箱</span></div>
        <div class="yhm"><div class="zc_tit"><em>*</em>创建密码：<input type="text"  id="passWord" name="passWord"/></div><span id="passwordError">密码太短了,最少6位。</span></div>
        <div class="yhm"><div class="zc_tit"><em>*</em>个性昵称：<input type="text"  id="userName" name="userName"/></div><span id="userNameError">此昵称太受欢迎，已有人抢了</span></div>
        <div style="clear:both"></div>
        <div class="tjian">
        <span>从下面推荐中选一个吧</span>
        	<ul>
            	<li><input type="radio" name="rdoo"/>可爱开心就好</li>
                <li><input type="radio" name="rdoo"/>可爱开心就好</li>
                <li><input type="radio" name="rdoo"/>可爱开心就好</li>
                <li><input type="radio" name="rdoo"/>可爱开心就好</li>
                <li><input type="radio" name="rdoo"/>可爱开心就好</li>
                <li><input type="radio" name="rdoo"/>可爱开心就好</li>
                <li><input type="radio" name="rdoo"/>可爱开心就好</li>
                <li><input type="radio" name="rdoo"/>可爱开心就好</li>
            </ul>
        </div>
        <div style="clear:both"></div>
        <div class="yhm"><div class="zc_tit"><em>*</em>&nbsp;&nbsp;&nbsp;验证码：<input type="text" style="margin-left:2px; width:60px; margin-right:5px" /></div><a href="#" style="font-size:12px; float:left; height:30px; line-height:30px">换一换</a><span>请输入验证码</span></div>
    </div>
    <div style="clear:both"></div>
    <div class="zc_btn"><a href="#" onclick="createUser();">&nbsp;</a></div>
    </form>
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