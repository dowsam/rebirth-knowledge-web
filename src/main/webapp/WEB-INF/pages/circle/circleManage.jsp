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

});

</script>

    	<div class="qz_all_r">

        	<div class="qz_all_con">

            	<div class="qz_all_tit"><b>圈子</b> > <b>知识管理</b> > 圈子管理</div>

                <div class="c" style="display:block">

                <table>

                  <tr id="qz_tr2">

                    <td style="width:3%"><input type="checkbox" /></td>

                    <td>头像</td>

                    <td>昵称</td>

                    <td>主贴</td>

                    <td>回帖</td>

                    <td>精华</td>

                    <td>申请理由</td>

                    <td style="width:17%">申请时间</td>

                    <td>操作</td>

                  </tr>

                </table>

                  <div class="tiquan"><span>批量操作:</span><a href="#"><img src="${path }images/020.png" /></a> &nbsp;&nbsp;<a href="#"><img src="${path }images/021.png" /></a></div>

                </div>

                

                <div class="c">

                <table>

                  <tr id="qz_tr2">

                    <td style="width:3%"><input type="checkbox" /></td>

                    <td>圈文标题</td>

                    <td>创建人</td>

                    <td>创建时间</td>

                    <td>修改人</td>

                    <td>修改时间</td>

                    <td>操作</td>

                  </tr>

                  <tr>

                  	<td><input type="checkbox" /></td>

                  	<td>个人知识管理</td>

                    <td>张三李四</td>

                    <td>2012-08-08</td>

                    <td>李四张三</td>

                    <td>2012-09-18</td>

                    <td><a href="#" style="color:green;font-size:12px;">通过</a>&nbsp;&nbsp;<a href="#" style="color:blue;font-size:12px;">不通过</a></td>

                  </tr>

                </table>

                <div class="tiquan"><span>批量操作:</span><a href="#"><img src="images/029.png" /></a>&nbsp;&nbsp;<a href="#"><img src="images/030.png" /></a></div>

                </div>

                <div class="c">

               	  <div class="jl">

                	<ul>

                    	<li><span>用户昵称：</span><input type="text"  style="width:250px"/></li>

                        <li><span>帖子标题：</span><input type="text" style="width:300px"/></li>

                        <li><span>操作类型：</span>

                        	<select>

                            	<option>==所有==</option>

                                <option>置顶</option>

                                <option>取消置顶</option>

                                <option>精华</option>

                                <option>取消精华</option>

                                <option>删除帖子</option>

                                <option>删除相册</option>

                                <option>批准加入</option>

                                <option>拒绝加入</option>

                                <option>禁言</option>

                                <option>取消禁言</option>

                                <option>踢出</option>

                            </select>

                      </li>

                        <li><span>操作时间：</span><input type="text" style="float:none; width:100px"/> 至 <input type="text" style="float:none;width:100px"/></li>

                    </ul>

                    <div class="tiquan"><span>批量操作:</span>&nbsp;&nbsp;<a href="#"><img src="images/025.png" /></a></div>

                    <h2>操作记录查询</h2>

                    <table>

                      <tr id="qz_tr2">

                        <td>用户昵称</td>

                        <td>操作</td>

                        <td>操作人</td>

                        <td>操作理由</td>

                        <td>操作时间</td>

                      </tr>

                      <tr>

                        <td>张三李四</td>

                        <td><a href="#">恢复</a></td>

                        <td>王五赵六</td>

                        <td>没理由</td>

                        <td>09-10 12:50</td>

                      </tr>

                      <tr>

                        <td>张三李四</td>

                        <td><a href="#">恢复</a></td>

                        <td>王五赵六</td>

                        <td>没理由</td>

                        <td>09-10 12:50</td>

                      </tr>

                    </table>

                    </div>

                </div>

                <div class="c" style=" margin-bottom:10px">

                	<div class="sjtj">

                    	时间：<input type="text" style="width:80px;"/> 至 <input type="text" style="width:80px;"/> <a href="#" style="float:right; margin:0 5px;"><img src="images/026.png" /></a>

                    </div>

                    <table>

                      <tr id="qz_tr2">

                        <td>日期</td>

                        <td>新增主帖</td>

                        <td>新增回帖</td>

                        <td>新增成员</td>

                        <td>访问量</td>

                      </tr>

                      <tr>

                        <td>2012-09-10</td>

                        <td>1</td>

                        <td>0</td>

                        <td>0</td>

                        <td>1</td>

                      </tr>

                      <tr>

                      <td>2012-09-10</td>

                        <td>0</td>

                        <td>1</td>

                        <td>1</td>

                        <td>0</td>

                      </tr>

                      <tr>

                        <td>2012-09-10</td>

                        <td>1</td>

                        <td>0</td>

                        <td>0</td>

                        <td>1</td>

                      </tr>

                      <tr>

                      <td>2012-09-10</td>

                        <td>0</td>

                        <td>1</td>

                        <td>1</td>

                        <td>0</td>

                      </tr>

                      <tr>

                        <td>2012-09-10</td>

                        <td>1</td>

                        <td>0</td>

                        <td>0</td>

                        <td>1</td>

                      </tr>

                      <tr>

                      <td>2012-09-10</td>

                        <td>0</td>

                        <td>1</td>

                        <td>1</td>

                        <td>0</td>

                      </tr>

                      <tr>

                        <td>2012-09-10</td>

                        <td>1</td>

                        <td>0</td>

                        <td>0</td>

                        <td>1</td>

                      </tr>

                      <tr>

                      <td>2012-09-10</td>

                        <td>0</td>

                        <td>1</td>

                        <td>1</td>

                        <td>0</td>

                      </tr>

                      <tr>

                        <td>2012-09-10</td>

                        <td>1</td>

                        <td>0</td>

                        <td>0</td>

                        <td>1</td>

                      </tr>

                      <tr>

                      <td>2012-09-10</td>

                        <td>0</td>

                        <td>1</td>

                        <td>1</td>

                        <td>0</td>

                      </tr>

                      <tr>

                        <td>2012-09-10</td>

                        <td>1</td>

                        <td>0</td>

                        <td>0</td>

                        <td>1</td>

                      </tr>

                      <tr>

                      <td>2012-09-10</td>

                        <td>0</td>

                        <td>1</td>

                        <td>1</td>

                        <td>0</td>

                      </tr>

                    </table>



                </div>

                <div class="c">

                	<div class="qzsz">

                    	<ul>

                        	<li><span>圈子图标：</span>建议使用150 X 150像素的图片，以达到最佳显示效果</li>

                            <li style="margin-left:70px;"><span></span><input type="image" src="images/upload1.png" onclick=""/></li>

                            <li style="margin-left:70px;"><span></span><div><img src="images/us.png"/></div>

                            </li>

                            <li><span>圈子寄语：</span>

                            <textarea>企业实施知识管理的原因在于:1、竞争：市场竞争越来越激烈，创新的速度加快，所以企业必须不断获得新知识，并利用知识为企业和社会创造价值;2、顾客导向：企业要为客户创造价值;3、工作流动性：雇员的流动性加快，雇员倾向于提前退休，如果企业不能很好地管理其所获得的知识，企业有失去其知识基础的风险;4、环境不确定性。

                            

                            </textarea></li>

                            <li><span>圈子分类：</span>

                            <select>

                            	<option>文学</option>

                            </select>&nbsp;

                            <select>

                            	<option>其他</option>

                            </select>

                            </li>

                            <li><span>成员加入：</span>

                            <div class="chack" style="float:left; width:150px;">

                                <b><input type="radio" name="sp" />成员加入需要审批</b>

                                <b><input type="radio" name="sp" />成员加入不需要审批</b>

                            </div>

                            <div class="clear"></div>

                            <!--<input type="radio" name="jr"/>拥有圈子文馆

                            <input type="radio" name="jr"/>不拥有圈子文馆-->

                            </li>

                            <li style="width:600px;"><span>圈子属性：</span>

                            <div class="chack" style="float:left;">

                                <b><input type="radio" name="sx" />公开圈子 所有人都可以浏览圈子内容并发帖</b><div class="clear"></div>

                                <b><input type="radio" name="sx" />会员圈子 所有人都可以浏览圈子内容，但只有加入圈子的会员才可以发帖</b><div class="clear"></div>

                                <b><input type="radio" name="sx" />秘密圈子 只有加入圈子的会员，可以浏览圈子内容并发帖。</b>

                            </div> 

                           </li>

                           <li><span>圈 馆：</span>

                           <div class="chack" style="float:left; width:128px;">

                                <b><input type="radio" name="sp" />拥有圈子文馆</b>

                                <b><input type="radio" name="sp" />不拥有圈子文馆</b>

                                <div class="clear"></div>

                            </div>

                           </li>

                        </ul>

                    </div>

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

                <div class="c">

                	<div class="c_title"><span id="activa">副圈主列表</span><span>圈住审核</span><span>副圈主默认权限</span></div>

                    <div class="c_last" style="display:block">

                    <table>

                      <tr id="qz_tr2">

                        <td><a href="#" style="color:#000">全选</a></td>

                        <td>头像</td>

                        <td>昵称</td>

                        <td>主贴</td>

                        <td>回帖</td>

                        <td>精华</td>

                        <td>操作</td>

                      </tr>

                      <tr>

                      	<td><input type="checkbox" /></td>

                        <td><img src="images/tx/04.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td><a href="#" style="color:green">辞退</a></td>

                      </tr>

                      <tr>

                        <td><input type="checkbox" /></td>

                        <td><img src="images/tx/05.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td><a href="#" style="color:green">辞退</a></td>

                      </tr>

                      <tr>

                        <td><input type="checkbox" /></td>

                        <td><img src="images/tx/07.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td><a href="#" style="color:green">辞退</a></td>

                      </tr>

                      <tr>

                        <td><input type="checkbox" /></td>

                        <td><img src="images/tx/08.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td><a href="#" style="color:green">辞退</a></td>

                      </tr>

                      <tr>

                        <td><input type="checkbox" /></td>

                        <td><img src="images/tx/09.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td><a href="#" style="color:green">辞退</a></td>

                      </tr>

                    </table>

                    <div class="tiquan"><span>批量操作:</span><a href="#"><img src="images/031.png" /></a></div>

                    </div>

                    <div class="c_last">

                    <table>

                      <tr id="qz_tr2">

                        <td><a href="#" style="color:#000">全选</a></td>

                        <td>头像</td>

                        <td>昵称</td>

                        <td>主贴</td>

                        <td>回帖</td>

                        <td>精华</td>

                        <td id="ac">申请理由</td>

                        <td>申请时间</td>

                        <td>操作</td>

                      </tr>

                      <tr>

                      	<td><input type="checkbox" /></td>

                        <td><img src="images/tx/04.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td>批量操作批量操作批量操作批量操作批量操作批量操作批量操作</td>

                        <td>2012-09-18</td>

                        <td style="width:125px;"><a href="#" style="color:green">聘用</a>&nbsp;<a href="#" style="color:blue">不聘用</a></td>

                      </tr>

                      <tr>

                      	<td><input type="checkbox" /></td>

                        <td><img src="images/tx/03.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td>批量操作批量操作批量操作批量操作批量操作批量操作批量操作</td>

                        <td>2012-09-18</td>

                        <td style="width:125px;"><a href="#" style="color:green">聘用</a>&nbsp;<a href="#" style="color:blue">不聘用</a></td>

                      </tr>

                      <tr>

                      	<td><input type="checkbox" /></td>

                        <td><img src="images/tx/02.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td>批量操作批量操作批量操作批量操作批量操作批量操作批量操作</td>

                        <td>2012-09-18</td>

                        <td style="width:125px;"><a href="#" style="color:green">聘用</a>&nbsp;<a href="#" style="color:blue">不聘用</a></td>

                      </tr>

                      <tr>

                      	<td><input type="checkbox" /></td>

                        <td><img src="images/tx/01.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td>批量操作批量操作批量操作批量操作批量操作批量操作批量操作</td>

                        <td>2012-09-18</td>

                        <td style="width:125px;"><a href="#" style="color:green">聘用</a>&nbsp;<a href="#" style="color:blue">不聘用</a></td>

                      </tr>

                      <tr>

                      	<td><input type="checkbox" /></td>

                        <td><img src="images/tx/09.jpg" width="50" height="50"/></td>

                        <td>张三李四</td>

                        <td>5</td>

                        <td>555</td>

                        <td>2</td>

                        <td>批量操作批量操作批量操作批量操作批量操作批量操作批量操作</td>

                        <td>2012-09-18</td>

                        <td style="width:125px;"><a href="#" style="color:green">聘用</a>&nbsp;<a href="#" style="color:blue">不聘用</a></td>

                      </tr>

                    </table>

                    <div class="tiquan"><span>批量操作:</span><a href="#"><img src="images/032.png" /></a>&nbsp;&nbsp;<a href="#"><img src="images/033.png" /></a></div>

                    </div>

                    <div class="c_last">

                    <h2>副圈住授权</h2>

                    <h3>话题管理</h3>

                    <ol class="htgl">

                    	<li><input id="a1"  type="checkbox" />允许编辑话题</li>

                        <li><input id="a1"  type="checkbox" />允许删除帖子</li>

                        <li><input id="a1"  type="checkbox" />允许设置精华</li>

                        <li><input id="a1"  type="checkbox" />允许置顶操作</li>

                    </ol>

                    <div class="clear"></div>

                    <h3>圈文管理</h3>

                    <ol class="qwgl">

                    	<li><input id="a2" type="checkbox" />允许编辑圈文</li>

                        <li><input id="a2"  type="checkbox" />允许删除帖子</li>

                        <li><input id="a2"  type="checkbox" />允许设置精华</li>

                        <li><input id="a2"  type="checkbox" />允许置顶操作</li>

                    </ol>

                    <div class="clear"></div>

                    <div class="tiquan"><a href="#"><img src="images/034.png" /></a></div>

                    </div>

                    

                </div>

				

<script type="text/javascript">

$(document).ready(function() {

	$(".qz_all_l li").each(function(index, dom) {

		$($(this)[0]).click(function(){

			$(".c").each(function(a, b) {

				if(a == index)

				{

					$(this).css("display","block");	

				}else{

					$(this).css("display","none");	

				}               

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