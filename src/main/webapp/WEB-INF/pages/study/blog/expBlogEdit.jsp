<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>扩展编辑</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<script type="text/javascript" src="${path }js/banner.js"></script> 
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
          <li><a href="${path }">首 页</a>|</li>
          <li><a href="${path }libiary">社区阅览室</a>|</li>
          <li><a href="${path }blogMaster">博文达人</a>|</li>
          <li><a href="${path }study" class="active">我的书房</a>|</li>
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
                    <li><a><img src="${path }images/Edit/kzxxgl.png" /></a></li>
                </ul>
                <div class="clear"></div>
                <ul class="t1">
                	<li class="t1_tit"><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：</span><input type="text" /></li>
                    <li class="t1_quanxian"><span>阅读权限：</span><select><option>公众公开</option><option>社区公开</option><option>企业公开</option><option>好友公开</option><option>密友公开</option><option>私有</option></select><div><input type="checkbox" />原创投稿</div><div class="nav_quanxian"><select><option>书柜分类</option><option>生 活</option><option>学 习</option><option>娱 乐</option><option>其 他</option></select><ul><li><a>编辑分类</a></li></ul></div></li>
                    <li class="t1_biaoq"><span>博文标签：</span><input type="text" /><div>博文摘要:<a href="#">添加文章摘要</a>(选填)</div></li>
                </ul>              
            </div>	
            <ul class="xxi">
                    <li><span>创建人:</span><input type="text" /> 创建时间: <input type="text" /></li>
                    <li><span>修改人:</span><input type="text" /> 修改时间: <input type="text" /></li>
                    <li><span>有效时间:</span><input type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" /></li>
            </ul>
			<div class="clear"></div>
            <div class="bfen">
                  <ul class="bfen_title">
                        <li><a href="#" style="background-position:0 -29px">备份信息</a></li>
                        <li><a href="#">审核履历</a></li>
                        <li><a href="#">关联知识</a></li>
                  </ul>
              <div class="clear"></div>
                  <ul class="bfen_con">
                    <li style="display:block">
                        <div class="con">
                   		  <div class="con_top">
                           	<h2>备份内容<a href="#"><img src="${path }images/Edit/wen.png" /></a></h2>                           
                            <div class="beizhu">
                           	  <h1>备份说明：</h1>
                            	<textarea></textarea>
                            </div>
                            <div class="con_table">
                            	<table width="880" class="table1">
                              <tr id="tr1">
                                <td>序号</td>
                                <td style="width:200px">备份时间</td>
                                <td style="width:100px">备份人员</td>
                                <td>备份说明</td>
                                <td style="width:120px">操作</td>
                              </tr>
                              <tr class="tr">
                                <td>1</td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员</td>
                                <td>54561451</td>
                                <td><a href="#">还原</a> <a href="#">删除</a></td>
                              </tr>
                              <tr class="tr">
                                <td>1</td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员</td>
                                <td>54561451</td>
                                <td><a href="#">还原</a> <a href="#">删除</a></td>
                              </tr>
                              <tr class="tr">
                                <td>1</td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员</td>
                                <td>54561451</td>
                                <td><a href="#">还原</a> <a href="#">删除</a></td>
                              </tr>
                              <tr class="tr">
                                <td>1</td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员</td>
                                <td>54561451</td>
                                <td><a href="#">还原</a> <a href="#">删除</a></td>
                              </tr>
                            </table>
                            </div>
                            <div class="clear"></div>
                            </div>    
                        </div>
                    </li>                    
                    <li>
                        <div class="con">
                   		  <div class="con_top">
                           	<span><a href="#"> </a></span>
                            <div class="con_table">
                            	<table width="880" class="table1">
                              <tr id="tr1">
                                <td><input type="checkbox" /></td>
                                <td style="width:200px">审核日期</td>
                                <td>提交人员</td>
                                <td>审核人员</td>
                                <td>审核状态</td>
                                <td>备注</td>
                              </tr>
                              <tr class="tr">
                                <td><input type="checkbox" /></td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员1</td>
                                <td>人员2</td>
                                <td>审核通过</td>
                                <td>直接发布</td>
                              </tr>
                              <tr class="tr">
                                <td><input type="checkbox" /></td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员1</td>
                                <td>人员2</td>
                                <td>审核通过</td>
                                <td>直接发布</td>
                              </tr>
                              <tr class="tr">
                                <td><input type="checkbox" /></td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员1</td>
                                <td>人员2</td>
                                <td>审核通过</td>
                                <td>直接发布</td>
                              </tr>
                              <tr class="tr">
                                <td><input type="checkbox" /></td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员1</td>
                                <td>人员2</td>
                                <td>审核通过</td>
                                <td>直接发布</td>
                              </tr>
                              <tr class="tr">
                                <td><input type="checkbox" /></td>
                                <td>2012-05-22 15：34:50.0</td>
                                <td>人员1</td>
                                <td>人员2</td>
                                <td>审核通过</td>
                                <td>直接发布</td>
                              </tr>                             
                            </table>
                            </div>
                            <div class="clear"></div>
                            </div>    
                        </div>
                    </li>
                    <li style="display:none">
                        <div class="con">
                   		  <div class="con_top">
                           	<h2 style="background:url(images/Edit/add.png) no-repeat 4px center">添加关联知识<a href="#"><img src="images/Edit/wen.png" /></a></h2>                           
                            <div class="con_table">
                            	<table width="880" class="table2">
                              <tr id="tr1">
                                <td style="width:30%">关联知识</td>
                                <td style="width:30%">关联度</td>
                                <td style="width:30%">操作</td>
                              </tr>
                              <tr class="tr">
                                <td>xxxx</td>
                                <td>5</td>
                                <td><a href="#">删除</a></td>
                              </tr>
                              <tr class="tr">
                                <td>xxxxxx</td>
                                <td>6</td>
                                <td><a href="#">删除</a></td>
                              </tr>
                              <tr class="tr">
                                <td>xxxxxxx</td>
                                <td>8</td>
                                <td><a href="#">删除</a></td>
                              </tr>
                              <tr class="tr">
                                <td>xxxxxxxx</td>
                                <td>9.9</td>
                                <td><a href="#">删除</a></td>
                              </tr>
                            </table>
                            </div>
                            <div class="clear"></div>
                            </div>    
                        </div>
                    </li>
                  </ul>
            </div>
           
        </div>
    </div>
    <script type="text/javascript">
            	 $(function(){
					$(".bfen_title").children().each(function(index,dom){						
						$($(this).children()[0]).click(function(){
							//alert("111");
							$(".bfen_con").children().each(function(i, d) {
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
   <script type="text/javascript">
   	$(document).ready(function() {
        $(".bfen_title li").each(function() {
            $(this).children().click(function(){
				$(this).css("background-position","0px -29px").parent().siblings().children().css("background-position","0px 0px");
			});
        });
    });
   </script>
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