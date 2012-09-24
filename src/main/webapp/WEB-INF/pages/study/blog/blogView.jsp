<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>浏览页面</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
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
          <div class="logo"><a hr1ef="http://www.baidu.com"><img src="images/logo.jpg" /></a></div>
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
          <li><a href="${path }" class="active">首 页</a>|</li>
          <li><a href="${path }libiary">社区阅览室</a>|</li>
          <li><a href="${path }blogMaster">博文达人</a>|</li>
          <li><a href="${path }study">我的书房</a>|</li>
          <li><a href="${path }circle">圈 子</a>|</li>
          <li><a href="${path }resourceCenter">企业资源中心</a></li>
        </ul>
      </div>
    <div class="liul">
   	  <div class="liul_title">标题</div>
        <div class="liul_top"><span>张三李四</span> <b>原创于</b>2012-08-09<b>阅读数：</b>271<b>被转藏：</b><a href="#">32</a><b>公众公开</b> <a href="#">原文来源</a></div>
        <h2>
        	<ul>
            	<li><a href="#">转到我的书房</a></li>
                <li><a href="#">推荐给朋友</a></li>
            </ul>
        </h2>
        <div class="liul_con1">
        <h3>[ 摘要 ]</h3>
        <div class="text1">
        	深圳航空新浪官方微博(微博)31日凌晨发布消息称，2012年8月30日22时29分，深航ZH9706航班起飞后收到威胁信息，为确保安全，航空公司在第一时间安排该航班在就近机场备降，23时22分飞机安全备降武汉天河国际机场(微博)。在机场及航空公司的统一安排下，旅客已全部入住酒店，等31日补飞航班回深圳。目前，公安部门已介入调查。
        </div>
        </div>
        <div class="liul_middle">
        	<div class="liul_middle_left">
            	<h2>目录</h2>
            </div>
          <div class="liul_middle_right">
            	<h2>奥斯陆爆炸时间</h2>
                <div class="text2">
                深圳航空新浪官方微博(微博)31日凌晨发布消息称，2012年8月30日22时29分，深航ZH9706航班起飞后收到威胁信息，为确保安全，航空公司在第一时间安排该航班在就近机场备降，23时22分飞机安全备降武汉天河国际机场(微博)。在机场及航空公司的统一安排下，旅客已全部入住酒店，等31日补飞航班回深圳。目前，公安部门已介入调查。
                </div>
                <script type="text/javascript">
				$(document).ready(function(e) {
					$(".liul_middle_right h3").each(function() {
						$(this).children().click(function(){
							$(this).parent().next().toggle();
						});
					});
				});
                </script>
                <h3><a href="#">伤亡情况</a></h3>
           	 	<div class="shangw">场备降，23时22分飞机安</div>
                <h3><a href="#">交通情况</a></h3>
           	 	<div class="jiaot">深圳航空新浪官方微博(微博)31日凌晨发布消息称，2012年8月30日22时29分，深航ZH9706航班起飞后收到威胁信息，为确保安全，航空公司在第一时间安排该航班在就近机场备降，23时22分飞机安全备降武汉天河国际机场(微博)。在机场及航空公司的统一安排下，旅客已全部入住酒店，等31日补飞航班回深圳。目前，公安部门已介入</div>
            <h2>犯罪情况</h2>
                <div class="text2">
                深圳航空新浪官方微博(微博)31日凌晨发布消息称，2012年8月30日22时29分，深航ZH9706航班起飞后收到威胁信息，为确保安全，航空公司在第一时间安排该航班在就近机场备降，23时22分飞机安全备降武汉天河国际机场(微博)。在机场及航空公司的统一安排下，旅客已全部入住酒店，等31日补飞航班回深圳。目前，公安部门已介入调查。
                </div>
                <h3><a href="#">被控罪名</a></h3>
           	 	<div class="zuim">场备降，23时22分飞机安</div>
                <h3><a href="#">背景</a></h3>
           	 	<div class="beij">场备降，23时22分飞机安</div>
                <h2>反应</h2>
                <div class="text2">
                深圳航空新浪官方微博(微博)31日凌晨发布消息称，2012年8月30日22时29分，深航ZH9706航班起飞后收到威胁信息，为确保安全，航空公司在第一时间安排该航班在就近机场备降，23时22分飞机安全备降武汉天河国际机场(微博)。在机场及航空公司的统一安排下，旅客已全部入住酒店，等31日补飞航班回深圳。目前，公安部门已介入调查。
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="liul_bottom">
        	<h2><span>相关博文：</span><span>相册评分：</span></h2>
            <ul>
            	<li><a href="#">在机场及航空公司的统一安排下</a></li>
                <li><a href="#">在机场及航空公司的统一安排下</a></li>
                <li><a href="#">在机场及航空公司的统一安排下</a></li>
                <li><a href="#">在机场及航空公司的统一安排下</a></li>
            </ul>
            <div class="pf"><img src="images/xx.gif" /><i>9.0</i>(60人评价)</div>
            <div class="clear"></div>
        </div>
      <div class="wzpl">
       	<h2>文章评论 （共<b>1</b>条）<a href="#">我要发表评论</a></h2>
        <div class="text3">
        	<div class="usid"><a href="#"><img src="images/users/user02.jpg" /></a></div>
            <div class="chat">
            	<ul>
                	<li style="padding:0"><span><a href="#">张三李四</a></span><b>2012-11-12 10:14:20</b></li>
                    <li>我要发表评论</li>
                    <li>我要发表评论</li>
                </ul>
            </div>
        </div>
      </div>
      <div class="fbpl">
       	<h2>发表评论：</h2>
        <div class="text3">
            <textarea class="text4">请输入您的评论内容...</textarea>
            <div class="fbpl2"><a href="#"><img src="images/fbpl.png" /></a></div>
        </div>
      </div>
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