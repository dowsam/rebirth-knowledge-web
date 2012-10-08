<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>圈子</title>
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
          <li><a href="${path }blogeMaster">博文达人</a>|</li>
          <li><a href="${path }libiary">我的书房</a>|</li>
          <li><a href="${path }circle" class="active">圈 子</a>|</li>
          <li><a href="${path }resourceCenter">企业资源中心</a></li>
        </ul>
      </div>
    <div class="quanzi">
    	<div class="quanzi_left">
            <div class="rdht">
            	<h2>热点话题</h2>
                <div class="ht_con">
                	<img src="images/tx/08.jpg" width="250" height="150" style="float:left"/>
                    <ul>
                        <li><a href="huatizhanshi.html">中国两大陆站旅进驻南海 曝三沙军事动员165465465165</a></li>
                        <li><a href="huatizhanshi.html">中国两大陆站旅进驻南海 曝三沙军事动员</a></li>
                        <li><a href="huatizhanshi.html">中国两大陆站旅进驻南海 曝三沙军事动员</a></li>
                        <li><a href="huatizhanshi.html">中国两大陆站旅进驻南海 曝三沙军事动员</a></li>
                        <li><a href="huatizhanshi.html">中国两大陆站旅进驻南海 曝三沙军事动员</a></li>
                        <li><a href="huatizhanshi.html">中国两大陆站旅进驻南海 曝三沙军事动员</a></li>
                        <li><a href="huatizhanshi.html">中国两大陆站旅进驻南海 曝三沙军事动员</a></li>
                   </ul>
                </div>
                <div class="clear"></div>
            </div>
            <c:forEach var="category" items="${map }" varStatus="status">
            	<div class="qzdh">
            		<c:if test="${status.index  eq 0 }">
            			<h2>圈子导航</h2>
            		</c:if>
            		<p>${category.key.categoryName }</p>
            		<ul>
            			<c:forEach var="item" items="${category.value }">
            				<li><a href="#" onclick="openCircleTopic('${item.id}');return;">${item.topicName }</a><span><a href="#" onclick="openCircle('${item.circleEntity.id}');">[${item.circleEntity.circleName }]</a></span></li>
            			</c:forEach>
            		</ul> 
            		<ul id="ss">
            			<c:forEach var="sec" items="${secMap[category.key] }">
            				<li><span>${sec.key.categoryName } |</span>
            					<c:forEach var="item" items="${secMap[category.key][sec.key] }">
            						<a href="#" onclick="openCircle('${item.id}')">${item.circleName }</a>
            					</c:forEach>
            				</li>
            			</c:forEach>
            		</ul>
            		<div class="clear"></div>
            	</div>
            </c:forEach>
        </div>
        <div class="quanzi_right">
        	<div class="thz">
            	<h2>社区通行证</h2>
                <div class="thz_con">
                	<div class="st_left_top" style="margin-left:10px">
        <div class="top_left">
          <div class="xx"><img src="images/xx.gif" /></div>
          <div class="pho"><img src="images/tx/05.jpg" /></div>
        </div>
        <div class="top_right">
          <div>guangjun</div>
          <div style="color:#57A8D2;">莲花社区</div>
          <ul>
            <li>博文:&nbsp;<span>1</span></li>
            <li>财富:&nbsp;<span>22</span></li>
            <li>访问:&nbsp;<span>333</span></li>
          </ul>
        </div>
        <div class="clear"></div>
        <ul class="st_top_btm">
          <li> <span>2</span>
            <p>博友</p>
          </li>
          <li> <span>22</span>
            <p>关注</p>
          </li>
          <li> <span>333</span>
            <p>粉丝</p>
          </li>
        </ul>
      </div>
      <div style="text-align:center; margin-top:5px"><a href="${path }circle/new"><img src="${path }images/create_cir.jpg" /></a></div>
      <div style="text-align:center; margin-top:5px"><a href="${path }circle/joinedCircle"><img src="${path }images/add_cir.jpg" /></a></div>
                </div>
            </div>
            <div class="quznzi_btm">
                <h2>24小时热帖排行榜</h2>
                <ul>
                	<c:forEach var="item" items="${hotTopic24 }">
                		<li><a href="#" onclick="openCircleTopic('${item.id}')">${item.topicName }</a></li>
                	</c:forEach>
                </ul>
            </div>
            <div class="zt">
                <h2>新增主帖排行榜</h2>
                <ul>
                	<c:forEach var="item" items="${weekNewlyCircle }">
                		<li><a href="#" onclick="openCircle('${item.id}')">${item.circleName }</a></li>
                	</c:forEach>
                </ul>
            </div>
            <div class="ht">
                <h2>新增回帖排行榜</h2>
                <ul>
                	<c:forEach var="item" items="${weekReplyTopic }">
                		<li><a href="#"  onclick="openCircleTopic('${item.id}')">${item.topicName }</a></li>
                	</c:forEach>
                </ul>
            </div>
             <div class="fwl">
                <h2>圈子总访问量排行</h2>
                <ul>
                	<c:forEach var="item" items="${totalCircle }">
                		<li><a href="#" onclick="openCircle('${item.id}')">${item.circleName }</a></li>
                	</c:forEach>
                </ul>
            </div>
            <div class="clear"></div>
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