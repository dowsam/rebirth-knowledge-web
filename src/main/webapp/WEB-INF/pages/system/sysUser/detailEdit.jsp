<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录导航</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<script type="text/javascript" src="${path }js/user/detailEdit.js"></script>
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
          <li><a href="${path }" class="active">首 页</a>|</li>
          <li><a href="${path }libiary">社区阅览室</a>|</li>
          <li><a href="${path }blogMaster">博文达人</a>|</li>
          <li><a href="${path }study">我的书房</a>|</li>
          <li><a href="${path }circle">圈 子</a>|</li>
          <li><a href="${path }resourceCenter">企业资源中心</a></li>
        </ul>
      </div>
    <div class="dldh_warp">
     	<div class="dldh_title">
        	<ul>
            	<li><a href="#" class="active3">1. 找社区</a></li>
                <li><a href="#">2. 找企业</a></li>
                <li><a href="#">3. 定义标签</a></li>
                <li><a href="#">4. 找博友</a></li>
            </ul>
        </div>
        <div class="clear"></div>
        <form id="userForm" action="${path }system/sysUser/update"  method="post">
        	<input type="hidden"   id="userId" name="id"  value="${id }"/>
        	<input type="hidden"  id="loginName"  name="loginName" value="${loginName }"/>
        	<input type="hidden" id="chooseBlogUser" value="${toChooseBlogUser }"/>
        <!----------------------------------------找社区------------------------------------------>
        <div class="zsq">
             <div class="dldh_title">选择您所在的社区,让社区邻居互相了解</div>
            <div class="dldh_content">
                <div class="dldh_search"><input type="text" /><a href="#"></a></div>
                <div class="clear"></div>
                <div class="dldh_out1">
                    <div class="dldh_xz"></div>
                    <div class="dldh_li">
                        <div class="dldh_title">${groupEntity.groupName }<a href="#" >【切换地区】</a></div>
                        <ul>
                        	<c:forEach var="group"  items="${areaGroup }">
                        		<li><input type="checkbox"   name="area" value="${group.id }"/>${group.groupName }</li>
                        	</c:forEach>
                        	<li><input type="checkbox"   name="area"  value="123"/>测试组</li>
                            <!-- <li><input type="checkbox" />莲花社区</li>
                            <li><input type="checkbox" />军门社区</li>
                            <li><input type="checkbox" />莲前社区</li>
                            <li><input type="checkbox" />海沧社区</li>
                            <li><input type="checkbox" />金山社区</li> -->
                        </ul>
                    </div>
                </div>
                 <div class="clear"></div>
            <div class="dldh_btn"><a id="dh1">&nbsp;&nbsp;</a></div>
            </div>
        </div>
        <!----------------------------------------找企业------------------------------------------>
        <div class="zqy">
            <div class="zqy_title2">博文馆支持创建且独立的知识库</div>
            <div class="zqy_content">
            <div class="zqy_search"><input id="search" type="text" /><a href="#" onclick="searchCompany();return false;"> </a></div>
            <div class="clear"></div>
            <ul class="chose" id="companyList">
            	<li><input  type="radio" name="company"  value="${company.id }" checked="checked"/>${company.groupName }</li>
            </ul>
            <div class="clear"></div>
            <div class="zqy_liuyan">
                <div class="t">留言</div>
                <div class="clear"></div>
                <div class="sj"></div>
                <textarea name="message"></textarea>
                <div class="clear"> </div>
                <div class="zqy_btn"><a id="dh2">&nbsp;&nbsp;</a></div>
            </div>
         </div>   
        </div>
        <!----------------------------------------定义标签------------------------------------------>
        <div class="dybq">
        <div class="dzx_title2">
            添加描述自己职业、兴趣爱好等方面的关键词，让更多人找到你，让你找到更多志同道合者。
        </div>
        <div class="dbq_content">
            <div class="dbq_left">
              <div class="dbq_serch"><input id="createTagInput" type="text" /><a href="#" onclick="createTag();return false;"><img src="${path }images/bq_serch.gif" /></a></div>
            </div>
            <div class="dbq_right">
                <div class="dr_title">
                你可能感兴趣的标签：<a href="#" onclick="changeTag();return false;">换一换</a>
                </div>
                	<c:forEach var="tag" items="${belongTag }">
                		<ul id="recommendList">
                				<li>${tag.tag.tagName }<input type="hidden"  name="addedTag"  value="${ tag.tag.id}"/><a href="#" onclick="removeTag('this')"><em>-</em></a></li>
               	 		</ul>
                	</c:forEach>
            </div>
            <div class="clear"></div>
            <div class="dtjia">
                <div class="dtjia_t">
                    我已添加的标签：<a href="#">将我的标签推荐给朋友</a>
                </div>
                <ul id="addedTag">
                </ul>
            </div>
        </div>
            <div class="clear"></div>
            <div class="dbq_bottom">
                <div class="dbq_bottom_t">
                    关于标签：
                </div>
                <ul>
                    <li>标签是自定义描述自己职业、兴趣爱好的关键词，让更多人找到你，让你找到更多志同道合者。</li>
                    <li>已经添加的标签将显示在"我的微博"页面右侧栏中，方便大家了解你。</li>
                    <li>在此查看你自己添加的所有标签，还可以方便的管理，最多可添加10个标签。</li>
                    <li>点击已添加的标签，可以搜索到有同样兴趣的人。</li>
                </ul>
            </div>
            <div class="zby1"><a id="dh3">&nbsp;&nbsp;</a></div>
         </div>
         <!----------------------------------------找博友------------------------------------------>
        <div class="zby">
        <h3>你还没有关注任何博友,请选择几个开始新的体验吧！</h3>
        <div class="zby_content">
            <div class="zby_li">
                <ul id="interestUserBlock">
                <c:forEach var="user" items="${interestedUser }">
                	<li>
                        <div class="zyb_info">
                            <div class="zyb_pho"><img src="${path }images/tx/05.jpg" /></div>
                            <div class="zby_r">
                                <div class="zyb_id">${user.userName }</div>
                                <span><img src="${path }images/xx.gif" /></span>
                                <ul>
                                    <li>图书</li>
                                    <li>爬山</li>
                                    <li>看电影</li>
                                </ul>
                            </div>
                        </div>
                         <div class="clear"></div>
                          <div class="zyb_xq">标签是自定义描述自己职业、兴趣爱好的关键词，让更多人找到你，让你找到更多志同道合者</div>
                          <div id="zyb_btn"><a href="#">&nbsp;&nbsp;</a></div>
                    </li>
                </c:forEach>
                    
                </ul>
            </div>
        </div>
        <div class="clear"></div>
        <div class="zyb_ty"><a href="#" id="dh4">&nbsp;&nbsp;</a></div>
        </div>
        </form>
    </div>
    <div class="clear"></div>
    <!----------------------------------------版权信息------------------------------------------>
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