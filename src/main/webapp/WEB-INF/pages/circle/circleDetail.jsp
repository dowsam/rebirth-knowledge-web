<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>圈子文馆</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<script type="text/javascript"  src="${path }js/circle/circle.js"></script>
<script type="text/javascript">
	var web_path='${path}';
	$(document).ready(function(){
		$(":checkbox").click(function(){
			if($(this).attr("checked") == 'checked'){
				var input1=$("<input type='hidden' value='"+$(this).val()+"' name='items'/>");
				input1.appendTo('#deleteForm');
				var input2=$("<input type='hidden' value='"+$(this).val()+"' name='sticky'/>");
				input2.appendTo('#stickyForm');
				var input3=$("<input type='hidden' value='"+$(this).val()+"' name='marrow'/>");
				input3.appendTo('#marrowForm');
				var input4=$("<input type='hidden' value='"+$(this).val()+"' name='recycle'/>");
				input4.appendTo('#recycleForm');
				alert($('#stickyForm').html());
			}else{
				var obj=$(this);
				$('#deleteForm').children().each(function(i){
					if($(this).val() == $(obj).val()){
						$(this).remove();
					}
				});
				$('#stickyForm').children().each(function(i){
					if($(this).val() == $(obj).val()){
						$(this).remove();
					}
				});
				$('#marrowForm').children().each(function(i){
					if($(this).val() == $(obj).val()){
						$(this).remove();
					}
				});
				$('#recycleForm').children().each(function(i){
					if($(this).val() == $(obj).val()){
						$(this).remove();
					}
				});
			}
		});
	});
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

            <h2 class="a"><span><a href="qz_index.html">话题列表</a></span></h2>

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

                <h2><span>爱显摆圈<img src="${path }images/top_3.png" /></span></h2>

                <div class="qz_m_con">

                	<div class="qz_m_title">圈住寄语：</div>

                    <p>您正在听的是小品荟萃的歌曲《拍电影 - 陈佩斯/朱时茂》,如果您觉得好听,请告诉您的朋友一起来听！感谢您的支持。你也可以通过搜索找到小品荟萃的歌曲。</p>

                

                </div>

                 <div class="qs">
					<form id="deleteForm" action="${path }circleTopic/${circle.id}/batchDelete" method="post">
						<input type="hidden"  name="_method" value="DELETE"/>
					</form>
				<form id="stickyForm" action="${path }circleTopic/${circle.id}/sticky" method="post">
					</form>
					<form id="marrowForm" action="${path }circleTopic/${circle.id}/marrow" method="post">
					</form>
					<form id="recycleForm" action="${path }circleTopic/${circle.id}/recycle" method="post">
					</form>
                	<ul>

                    	<li><a href="${path }circleTopic/new/${circle.id}" ><img src="${path }images/027.png" /></a></li>

                        <li>&nbsp;<a href="#" onclick="submitOper('deleteForm');return false;"><img src="${path }images/016.png" /></a></li>

                        <li>&nbsp;<a href="#" onclick="submitOper('recycleForm');retrun false;"><img src="${path }images/028.png" /></a></li>

                        <li>&nbsp;<a href="#" onclick="submitOper('stickyForm');return false;"><img src="${path }images/018.png" /></a></li>

                        <li>&nbsp;<a href="#" onclick="submitOper('marrowForm');return false;"><img src="${path }images/019.png" /></a></li>


                    </ul>

                </div>

                <h2><span style="background:none; cursor:pointer">话题列表</span><!--<span style="background:none;cursor:pointer; margin-left:300px;">发表话题</span>--></h2>

                <div class="qz_ht_li">

                	<table>

                    <tr class="qa_tab_tr1">

                        <td colspan="2">回复/点击</td>

                        <td>标题</td>

                        <td>作者/最后回复</td>

                        <td>回复时间</td>

                     </tr>
                     <c:forEach var="item" items="${topic }">
                     	<tr>
                     		<c:if test="${user.id == circle.master.id }">
                     			<td><input type="checkbox"  value="${item.id }"/></td>
                     		</c:if>
                     		<td style="color:#ccc"><b>${item.statisticalEntity.totalReplyCount }</b>/${item.statisticalEntity.totalVisitCount }</td>
                     		<td><div class="td2"><a href="huatizhanshi.html" style="height:25px;">${item.topicName }
                     		</a>
                     			<c:if test="${item.sticky }">
                     				<em><img src="${path }images/d.png" /></em>
                     			</c:if>
                     			<c:if test="${item.marrow }">
                     				<em><img src="${path }images/j.png" /></em>
                     			</c:if>
                     		</div>
                     		<td><a href="#" style=" font-size:12px;">${item.creater.userName }</a>/${item.statisticalEntity.lastReplyUser.userName }</td>
                     		<td>${item.statisticalEntity.lastReplyDate }</td>
                     	</tr>
                     </c:forEach>

                    </table>

<script type="text/javascript">

$(document).ready(function() {

    $(".qz_ht_li tr:odd").addClass("active8");

});

</script>             

                </div>

            </div>

        </div>

        <div class="qz_right">

        	<div class="qz_right_top">

            	<div class="ph4"><img src="${path }images/tx/04.jpg" /></div>

                <ul>

                	<li style="padding:0"><b>上官明程</b></li>

                	<li style="background:url(../images/xinx.png) no-repeat left center">发帖<span>1000</span></li>

                    <li style="background:url(../images/user.png) no-repeat left center">加入<span>20</span>个圈子</li>

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

                	<li><a href="#"><img src="${path }images/3_03.png" /></a></li>

                    <li><a href="#"><img src="${path }images/3_07.png" /></a></li>

                    <li><a href="${path }circle/manage/${circle.id}"><img src="${path }images/3_10.png" /></a></li>

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