<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建话题</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
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
          <div class="logo"><a href="http://www.baidu.com"><img src="images/logo.jpg" /></a></div>
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
      
    <div class="qz_index">
    	<div class="qz_left">
        	<div class="run1"><a href="quanzi.html">转到圈子首页</a></div>
            <h2><span><a href="qz_index.html">话题列表</a></span></h2>
            <h2><span><a href="">圈子文馆</a></span></h2>
            <ul>
            	<li><a href="qz_index-3.html">显摆一</a></li>
                <li><a href="#">显摆二</a></li>
                <li><a href="#">显摆三</a></li>
                <li><a href="#">显摆四</a></li>
            </ul>
<script type="text/javascript">
$(document).ready(function() {
   $($(".qz_index h2")[1]).next().children().each(function() {
	   $(this).click(function(){
			$(this).addClass("activ5").siblings().removeClass("activ5");
		});
   }); 
	//话题列表 圈子文馆菜单切换背景	
	$($(".qz_left h2")[0]).css("background","#C6E8F4").children().css("background","url(images/fx.png) no-repeat left center");
    $(".qz_left h2").each(function() {
		
	$(this).click(function(){
	$(this).css("background","#C6E8F4").children().css("background","url(images/fx.png) no-repeat left center").parent().siblings("h2").css("background","none").children().css("background","none");
		});
	});
});
</script>

            <hr />
        </div>
        <div class="qz_middle">
        	<div class="qz_m_top">
                <h2><span>爱显摆圈<img src="images/top_3.png" /></span></h2>
                <div class="qz_m_con">
                	<div class="qz_m_title">圈住寄语：</div>
                    <p>您正在听的是小品荟萃的歌曲《拍电影 - 陈佩斯/朱时茂》,如果您觉得好听,请告诉您的朋友一起来听！感谢您的支持。你也可以通过搜索找到小品荟萃的歌曲。</p>
                </div>
                <div class="fbqw">
                		<form id="topicForm" action="${path }circleTopic" method="post">
                			<input type="hidden"  name="circle" value="${circleId }"/>
		                	<ul>
			                    	<li><span>标 题：</span><input type="text"  name="topicName"/></li>
			                        <li><span>内 容：</span><div class="bjq2"><input type="text" name="topicContent.content"/></div></li>
		                    </ul>
		                    <a href="#" onclick="submitTopic();return;">发布话题</a>
                        </form>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="qz_right">
        	<div class="qz_right_top">
            	<div class="ph4"><img src="images/tx/04.jpg" /></div>
                <ul>
                	<li style="padding:0"><b>上官明程</b></li>
                	<li style="background:url(images/xinx.png) no-repeat left center">发帖<span>1000</span></li>
                    <li style="background:url(images/user.png) no-repeat left center">加入<span>20</span>个圈子</li>
                </ul>
            </div>
            <div class="clear"></div>
            <hr />
            <div class="qz_right_btm">
            	<div class="tit"><b>圈子信息</b><span>目录：<a href="#">女人</a></span></div>
                <h2>圈主：</h2>
                <ul>
                	<li><a href="#">ererh</a></li>
                </ul>
                <h2>副圈主：</h2>
                <ul>
                	<li><a href="#">ererh</a></li>
                    <li><a href="#">rhrhrt</a></li>
                    <li><a href="#">vzdvv</a></li>
                    <li><a href="#">v4d5f7bv4db</a></li>
                </ul>
                <h2>会员：<span>5512</span>人</h2>
                <ul class="bt1">
                	<li><a href="#"><img src="images/3_03.png" /></a></li>
                    <li><a href="#"><img src="images/3_07.png" /></a></li>
                    <li><a href="quanzigl.html"><img src="images/3_10.png" /></a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
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