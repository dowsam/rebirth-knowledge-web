<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我加入的圈子</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<script type="text/javascript"  src="${path }js/circle/circle.js"></script>
<script type="text/javascript"  src="${path }js/obj.js"></script>
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
          <li><a href="${path }circle"  class="active">圈 子</a>|</li>
          <li><a href="${path }resourceCenter">企业资源中心</a></li>
        </ul>
      </div>
    <div class="join_r">
    	<div class="join_r_l">
        	<div class="join_r_l_top">
            	<div style="padding-top:10px; padding-left:15px; float:left"><img src="${path }images/tx/04.jpg" style="float:left; width:60px; height:60px;" /><span style="float:left; height:60px; line-height:60px; margin-left:10px; font-size:16px; font-weight:bold;">圈子</span></div>
                <div class="qz_search">
                	<input type="text" class="inputs"/><span style="float:left"><a href="#"><img src="${path }images/012.png" style="height:30px;"/></a></span><!--<input type="button" style="width:65px; height:30px; background:url(images/012.png) no-repeat;" /><br />-->
                     <div class="clear"></div>
                    <ul>
                    	<li><input type="radio" name="s"/>进入圈子</li>
                        <li><input type="radio" name="s"/>帖子搜索</li>
                        <li><input type="radio" name="s"/>用户搜索</li>
                    </ul>
                </div>
               
            </div>
        <div class="qz_nav">
        	<ul>
            	<li class="activ9"><a href="#" style="color:#000" onclick="changeTab(this);return;">最新帖子</a>|</li>
                <li><a href="#" onclick="changeTab(this);return;">我的帖子</a>|</li>
            </ul>

        </div>
        <div class="clear"></div>
        <div id="newly" class="pa1" style="display:block">
        <div class="tabt">
        	<ul>
        	<li><a id="newly" href="#" class="activ10" onclick="showAndHide('newlyTopic','marrowTopic',this);return;">全部</a></li>
            <li><a id="marrow" href="#" onclick="showAndHide('marrowTopic','newlyTopic',this);return;">精华</a></li>
        </ul>
        </div>
        <table id="newlyTopic">
          <tr class="join_r_l_tr">
            <td>帖子标题</td>
            <td>圈子</td>
            <td>作者</td>
            <td>回复/浏览</td>
          </tr>
          <c:forEach var="item" items="${newlyTopic }">
          	<tr>
	            <td class="tex"><a href="huatizhanshi.html">${item.topicName }</a></td>
	            <td>${item.circleEntity.circleName }</td>
	            <td>${item.creater.userName }</td>
	            <td>${item.replyCount }/${item.visitCount }</td>
          </tr>
          </c:forEach>
        </table>
        <table id="marrowTopic"  style="display:none">
        	<tr class="join_r_l_tr">
            <td>帖子标题</td>
            <td>圈子</td>
            <td>作者</td>
            <td>回复/浏览</td>
          </tr>
          <c:forEach var="item" items="${marrowTopic }">
          	<tr>
	            <td class="tex"><a href="huatizhanshi.html">${item.topicName }</a></td>
	            <td>${item.circleEntity.circleName }</td>
	            <td>${item.creater.userName }</td>
	            <td>${item.replyCount }/${item.visitCount }</td>
	        </tr>
          </c:forEach>
        </table>
        </div>
        
        <div id="my" class="pa1" style="display:none">
         <div class="tabt">
        	<ul>
        	<li><a href="#" class="activ10" onclick="showAndHide('myTopic','replyTopic',this);return;">我发表的</a></li>
            <li><a href="#" onclick="showAndHide('replyTopic','myTopic',this);return;">我回复的</a></li>
        	</ul>
         </div>
         <table id="myTopic">
          <tr class="join_r_l_tr">
            <td>帖子标题</td>
            <td>圈子</td>
            <td>作者</td>
            <td>回复/浏览</td>
          </tr>
          <c:forEach var="it" items="${myTopic }">
          <tr>
	            <td class="tex"><a href="huatizhanshi.html">${it.topicName }</a></td>
	            <td>${it.circleEntity.circleName }</td>
	            <td>${it.creater.userName }</td>
	            <td>${it.replyCount }/${it.visitCount }</td>
	        </tr>
          </c:forEach>
        </table>
        <table id="replyTopic" style="display:none">
        	<tr class="join_r_l_tr">
            <td>帖子标题</td>
            <td>圈子</td>
            <td>作者</td>
            <td>回复/浏览</td>
          </tr>
          <c:forEach var="it" items="${replyTopic }">
          <tr>
	            <td class="tex"><a href="huatizhanshi.html">${it.topicName }</a></td>
	            <td>${it.circleEntity.circleName }</td>
	            <td>${it.creater.userName }</td>
	            <td>${it.replyCount }/${item.visitCount }</td>
	        </tr>
          </c:forEach>
        </table>
        </div>
<script type="text/javascript">
$(document).ready(function() {
	$(".join_r_l table tr:odd").addClass("active8");    
});
</script>
		<div class="clear"></div>
        </div>
        <div class="join_r_r">
        	<h2><a href="${path }circle">转到圈子首页</a></h2>
            <div class="ft">发帖：1</div>
            <h3>我管理的圈子</h3>
            <ul>
            	<c:forEach var="item" items="${managingCircle }">
	            	<li><img src="${path }images/tx/05.jpg" /><span>${item.circleName }</span><p>成员:${item.memberNum }</p></li>
            	</c:forEach>
            </ul>
            <h3>进入我的圈子</h3>
            <ul>
            	<c:forEach var="item" items="${memberCircle }">
	            	<li><img src="${path }images/tx/04.jpg" /><span>${item.circleName }</span><p>成员:${item.memberNum }</p></li>
            	</c:forEach>
            </ul>
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