<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>基本编辑</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<script type="text/javascript" src="${path}js/banner.js"></script> 
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
          <li><a href="${path }" class="active">首 页</a>|</li>
          <li><a href="${path }libiary">社区阅览室</a>|</li>
          <li><a href="${path }blogMaster">博文达人</a>|</li>
          <li><a href="${path }study">我的书房</a>|</li>
          <li><a href="${path }circle">圈 子</a>|</li>
          <li><a href="${path }resourceCenter">企业资源中心</a></li>
        </ul>
      </div>
    <div class="bianji">
        <div class="bianji_con">
        	<div class="bianji_tit">
            	<ul class="t0">
                	<li style="margin-left:10px"><a><img src="${path }images/Edit/fb.png" /></a></li>
                    <li><a><img src="${path }images/Edit/qx.png" /></a></li>
                    <li><a><img src="${path }images/Edit/bccg.png" /></a></li>
                    <li><a href="${path }study/blog/expEdit"><img src="${path }images/Edit/kzxxgl.png" /></a></li>
                    <li style="margin-top:12px"><a href="${path }study/blog/seniorEdit">高级编辑</a></li>
                </ul>
                <div class="clear"></div>
                <ul class="t1">
                	<li class="t1_tit"><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：</span><input type="text" /></li>
                    <li class="t1_quanxian"><span>阅读权限：</span><select><option>公众公开</option><option>社区公开</option><option>企业公开</option><option>好友公开</option><option>密友公开</option><option>私有</option></select><div><input type="checkbox" />原创投稿</div><div class="nav_quanxian"><select><option>书柜分类</option><option>生 活</option><option>学 习</option><option>娱 乐</option><option>其 他</option></select><ul><li><a>编辑分类</a></li></ul></div></li>
                    <li class="t1_biaoq"><span>博文标签：</span><input type="text" /><div>博文摘要:<a href="#">添加文章摘要</a>(选填)</div></li>
                </ul>
            </div>	
            <div class="clear"></div>
            <div class="bjq"></div>
            <div class="fujian">
            	<h2>附件上传</h2>
                <div class="fj_li">
                	<ul>
                    	<li>附件1</li>
                        <li>附件2</li>
                        <li>附件3</li>
                        <li>附件4</li>
                        <li>附件5</li>
                    </ul>
                </div>
                 <div class="sc"><input type="file" /><a>上传</a></div>
                 <div class="sc_mun">
                 	<ul>
                    	<li><a>删除</a></li>
                        <li><a>移动</a></li>
                        <li><a>保存排序</a></li>
                    </ul>
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