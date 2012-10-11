<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>圈子管理</title>
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

          <li><a href="index.html" class="active">首 页</a>|</li>

          <li><a href="yls.html">社区阅览室</a>|</li>

          <li><a href="bwdr.html">博文达人</a>|</li>

          <li><a href="shufang.html">我的书房</a>|</li>

          <li><a href="quanzi.html">圈 子</a>|</li>

          <li><a href="zyzx.html">企业资源中心</a></li>

        </ul>

      </div>

    <div class="qz_all">

    	<div class="qz_all_l">

        	<div class="qz_all_l_t">圈子管理</div>

            <h2>成员管理</h2>

            <ul>

            	<li class="activ11"><a href="#">新成员审批</a></li>

                <li><a href="#">成员列表</a></li>

            </ul>

            <hr />

            <h2>圈文管理</h2>

            <ul>

            	<li><a href="#">圈文审核</a></li>

                <!--<li><a href="#">回收站</a></li>-->

            </ul>

            <hr />

            <h2>日常管理</h2>

            <ul>

            	<li><a href="#">操作记录查询</a></li>

                <li><a href="#">数据统计</a></li>

            </ul>

            <hr />

            <h2>圈子管理</h2>

            <ul>

            	<li><a href="#">基本设置</a></li>

                <li><a href="#">副圈主管理</a></li>

            </ul>

        </div>

<script type="text/javascript">

$(document).ready(function() {

	$(".qz_all_l li").each(function() {

        $(this).click(function(){

			$(this).addClass("activ11").siblings().removeClass("activ11");

			$(this).addClass("activ11").parent().siblings().children().removeClass("activ11");

		});

    });  
	
	$(".qz_all_l li").each(function(index, dom) {
		$($(this)[0]).click(function(){
			$(".c").each(function(a, b) {
					var url=getCircleManageUrl(index,$('#circleId').val());
					$(this).load(url);          
            });

		});

    });  

	$(".c .c_title span").each(function(i, d) {

		$(this).click(function(){

			$(this).attr("id","activa").siblings().removeAttr("id");

		});

        $(this).click(function(){

			$(".c_last").each(function(index, element) {

                if(i == index){
					$(this).css("display","block");

				}else{

					$(this).css("display","none");

				}

            });

		});

    });

});

</script>

    	<div class="qz_all_r">

        	<div class="qz_all_con">

            	<div class="qz_all_tit"><b>圈子</b> > <b>知识管理</b> > 圈子管理</div>
					<input id="circleId" type="hidden" value="${circle.id }" />
                <div id="content" class="c" style="display:block">

                </div>

                <style>

                .c .c_title { background:#7AD2FF; width:662px; margin:auto;color:#fff; height:30px; font-weight:bold}

				.c .c_title span {line-height:19px; padding:5px; cursor:pointer; float:left; margin-top:1px;border-bottom:1px solid #000;}

				.c .c_last {border:1px solid #7AD2FF;width:660px; margin:auto;margin-bottom:5px; display:none;}

				.c_last h2 { height:35px; line-height:35px; font-size:20px; font-weight:bold; text-align:center; width:662px; margin:auto;}

				.c_last h3 {height:25px; line-height:25px; font-size:14px; font-weight:bold; padding-left:15px;width:662px; margin:auto;}

				.c_last table { margin-left:0; width:656px;}

				#activa { background:#fff; border:1px solid #000; border-bottom:none; color:#000; font-weight:normal}

				.htgl li, .qwgl li { float:left; margin:5px 10px;}

				#ac {width:355px;}

                </style>

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