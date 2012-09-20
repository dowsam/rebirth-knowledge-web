<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业资源中心</title>
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
          <li><a href="${path }">首 页</a>|</li>
          <li><a href="${path }libiary">社区阅览室</a>|</li>
          <li><a href="${path }blogMaster">博文达人</a>|</li>
          <li><a href="${path }study">我的书房</a>|</li>
          <li><a href="${path }circle">圈 子</a>|</li>
          <li><a href="${path }resourceCenter" class="active">企业资源中心</a></li>
        </ul>
      </div>
    <div class="zyzx">
    	<div class="zyzx_left">
        	<ul class="zyzx_tab">
            	<li><a href="#">常用</a></li>
                <li><a href="#">全部</a></li>
                <li><a href="#">历史</a></li>
            </ul>
            <div class="clear"></div>
            <select>
            	<option>企业直属部门根节点</option>
                <option>企业XXX部门根节点</option>
                <option>企业XXX部门根节点</option>
            </select>
            <h2>tree</h2>
        </div>
        <div class="zyzx_middle">
        	<div class="qyrd">
                <h2>企业热点</h2>
                <ul>
                    <li><a href="liulan.html">内容浏览</a></li>
                    <li><a href="shijiechuang.html">视界窗浏览</a></li>
                    <li><a href="yinyuehe.html">音乐盒浏览</a></li>
                    <li><a href="xiangce2.html">相册浏览</a></li>
                    <li><a href="liulan.html">内容浏览</a></li>
                    <li><a href="shijiechuang.html">视界窗浏览</a></li>
                    <li><a href="yinyuehe.html">音乐盒浏览</a></li>
                    <li><a href="xiangce2.html">相册浏览</a></li>
                    <li><a href="liulan.html">内容浏览</a></li>
                    <li><a href="shijiechuang.html">视界窗浏览</a></li>
                    <li><a href="yinyuehe.html">音乐盒浏览</a></li>
                </ul>
                <div class="mor"><a href="#">更多+</a></div>
               </div>
            <div class="zyzx_left_top">
                    <div class="zyzx_tit">
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
                    <div class="zyzx_con">
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
                        </ul>
                        <ul class="ul2" style="display:none">
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        </ul>
                        <ul class="ul2" style="display:none">
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
                        <ul class="ul2" style="display:none">
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
                        $(".zyzx_tit ul").children().each(function(index,dom){
                            $($(this).children()[0]).click(function(){
                                $(".zyzx_con").children().each(function(i, d) {
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
            <div class="zyzx_left_top">
                    <div class="zyzx_tit2">
                        <h2>正在转藏</h2>
                        <ul>
                            <li><a href="#">全部</a></li>
                            <li><a href="#">文档</a></li>
                            <li><a href="#">图片</a></li>
                            <li><a href="#">音乐</a></li>
                            <li><a href="#">视频</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                    <div class="zyzx_con2">
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
                        </ul>
                        <ul class="ul2" style="display:none">
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        <li><a href="xiangce2.html">相册浏览</a><span class="ac">张三李四</span><span>20分钟前</span></li>
                        </ul>
                        <ul class="ul2" style="display:none">
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
                        <ul class="ul2" style="display:none">
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
                        $(".zyzx_tit2 ul").children().each(function(index,dom){
                            $($(this).children()[0]).click(function(){
                                $(".zyzx_con2").children().each(function(i, d) {
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
        <div class="zyzx_right">
        	<div class="r_top">社区公告</div>
            <div class="zyzx_right_tjzt">
          <h3>推荐主题</h3>
          <ul>
            <li><a href="zhutizhanshi.html">英文、中之间的文本网页翻译。</a></li>
            <li><a href="zhutizhanshi.html">英文、中之间的文本网页翻译。</a></li>
            <li><a href="zhutizhanshi.html">英文、中文间的文本、网页翻译</a></li>
            <li><a href="zhutizhanshi.html">英文、中文之间的文本、网页翻</a></li>
            <li><a href="zhutizhanshi.html">英文、中文间的文本、网页翻译</a></li>
            <li><a href="zhutizhanshi.html">英文、中文和之间的文本、译。</a></li>
            <li><a href="zhutizhanshi.html">英文、中文和日文之间的文本。</a></li>
          </ul>
        </div>
            <div class="zyzx_right_tjhd">
              <h3>推荐活动</h3>
              <ul>
                <li><a href="zhutizhanshi.html">英中文和文之的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文、文之间的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文文和文之间的文本、网页翻</a></li>
                <li><a href="zhutizhanshi.html">英文、日文之的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文、文日文之间的文本、译。</a></li>
                <li><a href="zhutizhanshi.html">文文和文之间的文本、网页翻译</a></li>
              </ul>
            </div>
            <div class="zyzx_right_tjsf">
              <h3>推荐书房</h3>
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
<style>
.zyzx_tjzt { wi1dth:250px;border-radius: 8px 8px 8px 8px;border:1px solid #59ADD8; margin-top:10px;background:#fff}
.zyzx_tjzt h3 { font-size:16px; height:30px; line-height:30px; color:#57A8D2; font-weight:bold; padding-left:10px}
.zyzx_tjzt_top {}
.zyzx_tjzt_top img { float:left; w1idth:60px; he1ight:60px; margin-left:2px}
.zyzx_tjzt_top ul { float:left; padding-left:5px}
.li1 li { height:20px; line-height:20px;width:130px;overflow:hidden}
.li1 li a { color:#000; font-size:12px}
.li1 li a:hover { text-decoration:underline; color:red;}

.li2 li { height:20px; line-height:20px;overflow:hidden;border-bottom:1px dashed #59ADD8; margin:2px 0; padding-left:10px; background:url(images/dian.gif) no-repeat left center;width: 220px;}
.li2 li a { color:#000;}
.li2 li a:hover { text-decoration:underline; color:red;}
</style>
            <div class="zyzx_tjzt">
            	<h3>推荐主题</h3>
                <div class="zyzx_tjzt_top">
                <img src="images/tx/10.jpg" />
                <ul class="li1">
                	<li><a href="zhutizhanshi.html">文文和文之间的文本文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本</a></li>
                </ul>
                
                <ul class="li2">
                	<li><a href="zhutizhanshi.html">文文和文之间的文本文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本文文和文之间的文本</a></li>
                    <li><a href="zhutizhanshi.html">文文和文之间的文本文文和文之间的文本</a></li>
                </ul>
                </div>
                <div class="clear"></div>
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