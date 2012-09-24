<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>阅览室</title>
<link href="css/reset.css" rel="stylesheet" />
<link href="css/globel.css" rel="stylesheet" />
<style type="text/css">
.a_de_no{color:#333;text-decoration:none;}
.a_de_no:active {color:red;text-decoration:underline;}
.a_de_no:hover {color:red;text-decoration:underline;}
.a_de_no:visited {text-decoration:none;}
</style>
</head>
<body>
<div class="warp">
<div class="av">
	<div class="top">
    <div class="right">
          <div class="top_tool">
            <ul>
              <li id="tool_1"><a>装扮</a></li>
              <li id="tool_2"><a href="grzx1.html">设置</a></li>
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
          <li><a href="${path }">首 页</a>|</li>
          <li><a href="${path }libiary" class="active">社区阅览室</a>|</li>
          <li><a href="${path }blogMaster">博文达人</a>|</li>
          <li><a href="${path }study">我的书房</a>|</li>
          <li><a href="${path }circle">圈 子</a>|</li>
          <li><a href="${path }resourceCenter">企业资源中心</a></li>
        </ul>
      </div>
    <div class="yls">
    	<div class="yls_left">
        	<div class="left1">
            	<h2 class="active6"><a href="yls.html" class="index">公众社区首页</a></h2>
                <h2><a href="#">军门社区首页</a></h2>
                <div><a href="#" id="turn">[切换社区]</a></div>
                <div class="yls_li">
                	<img src="images/2.gif" />
                	<h2>请选择你想要切换的社区</h2>
                	<ul>
                    	<li><a href="#">思明社区</a></li>
                        <li><a href="#">中山社区</a></li>
                        <li><a href="#">万石社区</a></li>
                        <li><a href="#">海沧社区</a></li>
                        <li><a href="#">东坪社区</a></li>
                        <li><a href="#">前埔社区</a></li>
                    </ul>
                </div>
                <script type="text/javascript">
                $(document).ready(function() {
                    $(".left1 h2").each(function() {
                        $(this).children().click(function(){
							$(this).parent().addClass("active6").siblings().removeClass("active6");
						});
                    });
					$("#turn").click(function(){
						$(".yls_li").toggle();
					});
					$(".left2 p").each(function() {
                        $(this).children().click(function(){
							$(this).parent().next().show().siblings("ul").hide();
						});
                    });
					/*$(".b_c1").click(function() {
                        $(".yls_left_bottom").hide();
						$(".yls_right_right").hide();
                    });
					$(".s_c1").click(function() {
                        $(".yls_left_bottom").show();
						$(".yls_right_right").show();
                    });*/
                });
                </script>
            </div>
            <div class="left2">
            	<h3><a href="#">公众社区精华导读</a></h3>
                <p><a href="#" class="b_c1">生活/家居</a></p>
                	<ul style="display:block">
                    	<li><a href="#" class="s_c1">生活百科</a></li>
                        <li><a href="#" class="s_c1">这里故事</a></li>
                        <li><a href="#" class="s_c1">家具装修</a></li>
                        <li><a href="#" class="s_c1">妈咪宝贝</a></li>
                        <li><a href="#" class="s_c1">时尚美容</a></li>
                        <li><a href="#" class="s_c1">星座算命</a></li>
                        <li><a href="#" class="s_c1">爱车e族</a></li>
                        <li><a href="#" class="s_c1">创意手工</a></li>
                    </ul>
                <p><a href="#" class="b_c1">教育/学习</a></p>
                	<ul>
                    	<li><a href="#" class="s_c1">生活百科</a></li>
                        <li><a href="#" class="s_c1">这里故事</a></li>
                        <li><a href="#" class="s_c1">家具装修</a></li>
                        <li><a href="#" class="s_c1">妈咪宝贝</a></li>
                        <li><a href="#" class="s_c1">时尚美容</a></li>
                        <li><a href="#" class="s_c1">星座算命</a></li>
                        <li><a href="#" class="s_c1">爱车e族</a></li>
                        <li><a href="#" class="s_c1">创意手工</a></li>
                    </ul>
                <p><a href="#" class="b_c1">情感/婚姻</a></p>
                	<ul>
                    	<li><a href="#" class="s_c1">生活百科</a></li>
                        <li><a href="#" class="s_c1">这里故事</a></li>
                        <li><a href="#" class="s_c1">家具装修</a></li>
                        <li><a href="#" class="s_c1">妈咪宝贝</a></li>
                        <li><a href="#" class="s_c1">时尚美容</a></li>
                        <li><a href="#" class="s_c1">星座算命</a></li>
                        <li><a href="#" class="s_c1">爱车e族</a></li>
                        <li><a href="#" class="s_c1">创意手工</a></li>
                    </ul>
                <p><a href="#" class="b_c1">社会/财经</a></p>
                <p><a href="#" class="b_c1">美食/烹饪</a></p>
            </div>
            <div class="left3">
            	<h3><a href="#">公众社区精华导读</a></h3>
                <p><a href="#" class="b_c1">生活/家居</a></p>
                	<ul style="display:block">
                    	<li><a href="#" class="s_c1">生活百科</a></li>
                        <li><a href="#" class="s_c1">这里故事</a></li>
                        <li><a href="#" class="s_c1">家具装修</a></li>
                        <li><a href="#" class="s_c1">妈咪宝贝</a></li>
                        <li><a href="#" class="s_c1">时尚美容</a></li>
                        <li><a href="#" class="s_c1">星座算命</a></li>
                        <li><a href="#" class="s_c1">爱车e族</a></li>
                        <li><a href="#" class="s_c1">创意手工</a></li>
                    </ul>
                <p><a href="#" class="b_c1">教育/学习</a></p>
                	<ul>
                    	<li><a href="#" class="s_c1">生活百科</a></li>
                        <li><a href="#" class="s_c1">这里故事</a></li>
                        <li><a href="#" class="s_c1">家具装修</a></li>
                        <li><a href="#" class="s_c1">妈咪宝贝</a></li>
                        <li><a href="#" class="s_c1">时尚美容</a></li>
                        <li><a href="#" class="s_c1">星座算命</a></li>
                        <li><a href="#" class="s_c1">爱车e族</a></li>
                        <li><a href="#" class="s_c1">创意手工</a></li>
                    </ul>
                <p><a href="#" class="b_c1">情感/婚姻</a></p>
                	<ul>
                    	<li><a href="#" class="s_c1">生活百科</a></li>
                        <li><a href="#" class="s_c1">这里故事</a></li>
                        <li><a href="#" class="s_c1">家具装修</a></li>
                        <li><a href="#" class="s_c1">妈咪宝贝</a></li>
                        <li><a href="#" class="s_c1">时尚美容</a></li>
                        <li><a href="#" class="s_c1">星座算命</a></li>
                        <li><a href="#" class="s_c1">爱车e族</a></li>
                        <li><a href="#" class="s_c1">创意手工</a></li>
                    </ul>
                <p><a href="#" class="b_c1">社会/财经</a></p>
                <p><a href="#" class="b_c1">美食/烹饪</a></p>
            </div>
        </div>
        <div class="yls_right">
        	<div class="yls_right_left">
                    <div class="yls_left_top">
                    <div class="yls_tit">
                        <h2>最新原创</h2>
                        <ul>
                            <li><a href="#">全部</a></li>
                            <li><a href="#">文档</a></li>
                            <li><a href="#">图片</a></li>
                            <li><a href="#">音乐</a></li>
                            <li><a href="#">视频</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                    <div class="yls_con">
                        <ul class="ul1">
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        </ul>
                        <ul class="ul2" style="display:none">
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="liulan.html">内容浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        </ul>
                        <ul class="ul3" style="display:none">
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        </ul>
                        <ul style="display:none">
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="yinyuehe.html">音乐盒浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        </ul>
                        <ul style="display:none">
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="shijiechuang.html">视界窗浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        </ul>
                        <script type="text/javascript">
                     $(function(){
                        $(".yls_tit ul").children().each(function(index,dom){
                            $($(this).children()[0]).click(function(){
                                $(".yls_con").children().each(function(i, d) {
                                    if(index == i){
                                        $(this).css("display","block");									
                                    }else{
                                        $(this).css("display","none");	
                                    }
                                });
                            })
                        });
                    })
                </script>
                    </div>
                </div>
                <div class="yls_left_bottom">
                	<div class="yls_tit2">
                        <h2>最新原创</h2>
                        <ul>
                            <li><a href="#">全部</a></li>
                            <li><a href="#">文档</a></li>
                            <li><a href="#">图片</a></li>
                            <li><a href="#">音乐</a></li>
                            <li><a href="#">视频</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                    <div class="yls_con2">
                    	<ul>
                        	<li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="shijiechuang.html">世界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="yinyuhe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="shijiechuang.html">世界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="yinyuhe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                        </ul>
                        <ul style=" display:none">
                        	<li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="liulan.html">内容浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                        </ul>
                        <ul style=" display:none">
                        	<li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="xiangce2.html">相册浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                        </ul>
                        <ul style=" display:none">
                        	<li>
                            	<div>
                                    <a href="yinyuehe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="yinyuehe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="yinyuehe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="yinyuehe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="yinyuehe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="yinyuehe.html">音乐盒浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                        </ul>
                        <ul style=" display:none">
                        	<li>
                            	<div>
                                    <a href="shijiechuang.html">视界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                           <li>
                            	<div>
                                    <a href="shijiechuang.html">视界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="shijiechuang.html">视界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="shijiechuang.html">视界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="shijiechuang.html">视界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="shijiechuang.html">视界窗浏览</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                        </ul>
                        <ul style=" display:none">
                        	<li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                        </ul>
                        <ul style=" display:none">
                        	<li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                            <li>
                            	<div>
                                    <a href="#">1区阅览室社区阅览室社区阅览室社区阅区阅览室社区阅览室社区阅览室社</a>
                                    <p>fwrgerg</p>
                                </div><span>203</span>
                            </li>
                        </ul>
                        <script type="text/javascript">
                     $(function(){
                        $(".yls_tit2 ul").children().each(function(index,dom){
                            $($(this).children()[0]).click(function(){
                                $(".yls_con2").children().each(function(i, d) {
                                    if(index == i){
                                        $(this).css("display","block");									
                                    }else{
                                        $(this).css("display","none");	
                                    }
                                });
                            })
                        });
                    })
                </script>
                    </div>
                    
                </div>
            </div>
            <div class="yls_right_right">
            	<div class="yls_yc">
                    <div class="yls_tit2">
                        <h2>最新活动</h2>
                    </div>
                    <ul>
                    	<li><a href="zhutizhanshi.html" class="a_de_no">市试点劳教制度改革 试点办公室仍设在公安局</a></li>
                        <li><a href="zhutizhanshi.html" class="a_de_no">哈尔滨其他匝道桥可能存隐患 承建方回应钢筋未捆绑</a></li>
                        <li><a href="zhutizhanshi.html" class="a_de_no">第二届中国亚欧博览会 中国现代田园城市高峰论坛第二届中国亚欧博览会 中国现代田园城市高峰论坛</a></li>
                    </ul>
                 </div>
                <div class="yls_tjsf">
                  <div class="yls_tit2">
                        <h2>推荐书房</h2>
                    </div>
                  <ul>
                    <li> <a href="shufang.html"><img src="images/tx/01.jpg" /></a>
                      <p><a href="shufang.html">张三李四</a></p>
                    </li>
                    <li> <a href="shufang.html"><img src="images/tx/02.jpg" /></a>
                      <p><a href="shufang.html">张三李四</a></p>
                    </li>
                    <li> <a href="shufang.html"><img src="images/tx/03.jpg" /></a>
                      <p><a href="shufang.html">张三李四</a></p>
                    </li>
                    <li> <a href="shufang.html"><img src="images/tx/04.jpg" /></a>
                      <p><a href="shufang.html">张三李四</a></p>
                    </li>
                    <li> <a href="shufang.html"><img src="images/tx/05.jpg" /></a>
                      <p><a href="shufang.html">张三李四</a></p>
                    </li>
                    <li> <a href="shufang.html"><img src="images/tx/02.jpg" /></a>
                      <p><a href="shufang.html">张三李四</a></p>
                    </li>
                  </ul>
                </div>
                <div class="yls_tjzt">
                  <div class="yls_tit2">
                        <h2>推荐主题</h2>
                    </div>
                  <ul>
                    <li><a href="zhutizhanshi.html">英文、中之间的文本、网页翻译。</a></li>
                    <li><a href="zhutizhanshi.html">英文、中之间的文本、网页翻译。</a></li>
                    <li><a href="zhutizhanshi.html">英文、中文间的文本、网页翻译</a></li>
                    <li><a href="zhutizhanshi.html">英文、中文之间的文本、网页翻</a></li>
                    <li><a href="zhutizhanshi.html">英文、中文间的文本、网页翻译</a></li>
                    <li><a href="zhutizhanshi.html">英文、中文和文之间的文本、译。</a></li>
                    <li><a href="zhutizhanshi.html">英文、中文和日文之间的文本。</a></li>
                  </ul>
       		   </div>
				<div class="yls_sqdr">
                  <div class="yls_tit2">
                        <h2>社区达人</h2>
                    </div>
                  <ul>
                    <li>
                        <span><a href="bwdr.html">张三李四</a></span><br />
                        <img src="images/xx.png" />
                        <p><a href="bwdr.html"><img src="images/tx/01.jpg" /></a></p>
                    </li>
                    <li>
                        <span><a href="bwdr.html">张三李四</a></span><br />
                        <img src="images/xx.png" />
                        <p><a href="bwdr.html"><img src="images/tx/02.jpg" /></a></p>
                    </li>
                    <li>
                        <span><a href="bwdr.html">张三李四</a></span><br />
                        <img src="images/xx.png" />
                        <p><a href="bwdr.html"><img src="images/tx/03.jpg" /></a></p>
                    </li>
                    <li>
                        <span><a href="bwdr.html">张三李四</a></span><br />
                        <img src="images/xx.png" />
                        <p><a href="bwdr.html"><img src="images/tx/04.jpg" /></a></p>
                    </li>
                    <li>
                        <span><a href="bwdr.html">张三李四</a></span><br />
                        <img src="images/xx.png" />
                        <p><a href="bwdr.html"><img src="images/tx/05.jpg" /></a></p>
                    </li>
                    <li>
                        <span><a href="bwdr.html">张三李四</a></span><br />
                        <img src="images/xx.png" />
                        <p><a href="bwdr.html"><img src="images/tx/06.jpg" /></a></p>
                    </li>
                  </ul>
                </div>
               
            </div>
        </div>
        <div class="yls_right2">
            <div class="yls_right2_tit">
            	<span><a href="#" style="color:#FF8500">全部文章</a></span><span><a href="#" style="color:#3D527F">精华文章</a></span>
                <select>
               	  <option>按系统算法排序</option>
                    <option>按被转藏书排序</option>
                    <option>按评论排序</option>
                    <option>按收录时间排序</option>
              </select>
              <div class="clear"></div>
              <div class="yls_right2_con">
              	<table>
                  <tr style="background:#eaffe5; height:25px; line-height:25px">
                    <td style="wid1th:40%;">标题</td>
                    <td style="width:10%;">被转藏</td>
                    <td style="width:10%;">评论</td>
                    <td style="width:10%;">收藏时间</td>
                    <td style="width:15%;">所属书房</td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="liulan.html">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit1">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                  <tr class="tab_tit2">
                    <td class="tab_tit3"><b>[精]</b><a href="#">活在当下的九条法则，完你将受益一生</a></td>
                    <td class="tabtd">20000</td>
                    <td class="tabtd">50</td>
                    <td class="tabtd">2012-08-10</td>
                    <td><span><a href="#">张三李四</a></span></td>
                  </tr>
                </table>
              </div>
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