<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博文达人达人榜</title>
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
          <li><a href="index.html">首 页</a>|</li>
          <li><a href="yls.html">社区阅览室</a>|</li>
          <li><a href="bwdr.html" class="active">博文达人</a>|</li>
          <li><a href="shufang.html">我的书房</a>|</li>
          <li><a href="quanzi.html">圈 子</a>|</li>
          <li><a href="zyzx.html">企业资源中心</a></li>
        </ul>
      </div>
<style>
.drb { width:900px; height:500px; margin:auto; margin-top:10px}
.drb_left { float:left; width:200px; border:1px solid #58AAD5;}
.drb_left h2 { height:30px; line-height:30px; text-align:center}
.drb_left h2 a { color:#58AAD5;font-size:16px; font-weight:bold;}
.drb_left ul {}
.drb_left ul li { height:25px; line-height:25px; text-align:center}
.drb_left ul li a { color:#000;padding:2px 70px;}
.drb_left ul li a:hover { color:#CCC}

.drb_right { float:left;margin-left:15px; width:675px;}
.drb_right ul {}
.drb_right ul li { border:1px solid #58AAD5; width:200px;padding:5px; float:left; margin-right:10px; margin-bottom:10px}
.drb_right ul li h1 { text-align:right}
.l { float:left; width:100px;}
.r { float:left; margin-top:17px;width: 50%;}
.r span { color:green;}
.r ul {}
.r ul li { color:#999; height:12px; line-height:12px; font-size:12px; width:90px;border:none; margin:0}

.r ul li span { color:#58AAD5; float:left;text-align:left; margin-right:5px;font-size:12px}
.drb_right p { color:#999; width:200px;line-height:18px; margin-top:10px}
.bq { color:orange; font-size:14px; font-weight:bold; text-align:center; height:30px; line-height:30px}
</style>
    <div class="drb">
        <div class="drb_left">
        	<h2><a href="drb-2.html">博文达人分类</a></h2>
            	<ul>
                	<li><a href="drb-2.html">电脑/网络</a></li>
                    <li><a href="drb-2.html">市场营销</a></li>
                    <li><a href="drb-2.html">财务行政</a></li>
                    <li><a href="drb-2.html">产品管理</a></li>
                    <li><a href="drb-2.html">知识管理</a></li>
                    <li><a href="drb-2.html">CTI</a></li>
                    <li><a href="drb-2.html">搜索引擎</a></li>
                    <li><a href="drb-2.html">呼叫中心</a></li>
                    <li><a href="drb-2.html">3G/4G</a></li>
                    <li><a href="drb-2.html">项目管理</a></li>
                    <li><a href="drb-2.html">测试</a></li>
                </ul>
            <h2><a href="bwdr.html">本周之星</a></h2>
            <h2><a href="bwdr.html">一周之星</a></h2>
            <h2><a href="bwdr.html">本月之星</a></h2>
            <h2><a href="bwdr.html">活跃新人</a></h2>
            <h2><a href="drb.html">达人榜</a></h2>
        </div>
        <style>
        .drb_fl { width:677px;float:left; margin-left:10px}
		.drb_fl .fl_top { height:30px; line-height:30px; background:#ccc}
		.fl_li { width:675px; height:110px;border-bottom:2px dashed #ccc; padding-top:10px; position:relative; }
		.fl_li li { height:22px; line-height:22px;}
		.fl_li li span a { color:#1036A1; font-weight:bold;}
		.li_l { float:left; margin-left:5px}
		.li_r {float:left; margin-left:5px; width:565px}
		.li_r p { margin-top:5px}
		.meili { float:right; margin-right:20px}
		.th { float:right; margin-right:30px}
        </style>
        <div class="drb_fl">
        	<div class="fl_top">222</div>
            <div class="fl_li">
            	<div class="li_l"><a href="shufang.html"><img src="images/tx/09.jpg" /></a></div>
                <div class="li_r">
                	<ul>
                    	<li><span><a href="shufang.html">张三李四</a></span><a href="#" class="meili"><img src="images/!.jpg" />&nbsp;&nbsp;&nbsp;</a><a href="#" class="th"><img src="images/meili.png" /></a></li>
                        <li>专业领域:平面设计</li>
                        <li>所在部门:ADC/B1</li>
                    </ul>
                    <p>版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心</p>
                    
                    
                    
                </div>
            </div>
            <div class="fl_li">
            	<div class="li_l"><a href="shufang.html"><img src="images/tx/09.jpg" /></a></div>
                <div class="li_r">
                	<ul>
                    	<li><span><a href="shufang.html">张三李四</a></span><a href="#" class="meili"><img src="images/!.jpg" />&nbsp;&nbsp;&nbsp;</a><a href="#" class="th"><img src="images/meili.png" /></a></li>
                        <li>专业领域:平面设计</li>
                        <li>所在部门:ADC/B1</li>
                    </ul>
                    <p>版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心</p>
                    
                    
                    
                </div>
            </div>
            <div class="fl_li">
            	<div class="li_l"><a href="shufang.html"><img src="images/tx/09.jpg" /></a></div>
                <div class="li_r">
                	<ul>
                    	<li><span><a href="shufang.html">张三李四</a></span><a href="#" class="meili"><img src="images/!.jpg" />&nbsp;&nbsp;&nbsp;</a><a href="#" class="th"><img src="images/meili.png" /></a></li>
                        <li>专业领域:平面设计</li>
                        <li>所在部门:ADC/B1</li>
                    </ul>
                    <p>版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心</p>
                    
                    
                    
                </div>
            </div>
            <div class="fl_li">
            	<div class="li_l"><a href="shufang.html"><img src="images/tx/09.jpg" /></a></div>
                <div class="li_r">
                	<ul>
                    	<li><span><a href="shufang.html">张三李四</a></span><a href="#" class="meili"><img src="images/!.jpg" />&nbsp;&nbsp;&nbsp;</a><a href="#" class="th"><img src="images/meili.png" /></a></li>
                        <li>专业领域:平面设计</li>
                        <li>所在部门:ADC/B1</li>
                    </ul>
                    <p>版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心版权所有互联网违法和不良信息举报中心</p>
                    
                    
                    
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