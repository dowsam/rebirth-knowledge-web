<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主题展编辑</title>
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
                </ul>
                <div class="clear"></div>
                <ul class="t1">
                	<li class="t1_tit"><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：</span><input type="text" /></li>
                    <li class="t1_quanxian"><span>阅读权限：</span><select><option>公众公开</option><option>社区公开</option><option>企业公开</option><option>好友公开</option><option>密友公开</option><option>私有</option></select><div><input type="checkbox" />原创投稿</div><div class="nav_quanxian"><select><option>主题展分类</option><option>车 站</option><option>书 展</option><option>房 展</option><option>文化节</option></select><ul><li><a>添加</a></li><li><a>删除</a></li><li><a>设置默认文件夹</a></li></ul></div></li>
                    <li class="t1_biaoq"><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签：</span><input type="text" /><div>博文摘要:<a href="#">添加文章摘要</a>(选填)</div></li>
                </ul>
            </div>	
            <div class="clear"></div>
           <div class="ztzbj">
           <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="images/close.gif" /></a></span></h2>
           <div class="ztzbj_con">
           		<div class="ztzbj_sz" style="display:block">
                <img src="${path }images/2.gif"  style="position:absolute; top:-11px; right:30px"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="${path }images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                <script type="text/javascript">
                	/*$(document).ready(function() {
                        $(".ztzbj .sz").click(function(){
							$(".ztzbj_sz").show();
						});
						$(".ztzbj_btn .qx").click(function(){
							$(".ztzbj_sz").hide();
						});
                    });*/
                </script>
           </div>
           <div class="ztzbj2">
                <div class="par1">
                <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="images/close.gif" /></a></span></h2>
                <div class="ztzbj2_con"></div>
                <div class="ztzbj_sz" style="top:32px; right:-95px;">
                <img src="${path }images/2.gif"  style="position:absolute; top:-12px; right:132px;"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                </div>
                <div class="par2">
                <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                <div class="ztzbj21_con">
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                
                </div>
                <div class="ztzbj_sz" style="top:32px; right:-95px">
                <img src="${path }images/2.gif"  style="position:absolute; top:-12px; right:132px"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="${path }images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                </div>
                <div class="par1">
                <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="images/close.gif" /></a></span></h2>
                <div class="ztzbj2_con"></div>
                <div class="ztzbj_sz" style="top:32px; right:-95px">
                <img src="${path }images/2.gif"  style="position:absolute; top:-12px; right:132px"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="${path }images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                <script type="text/javascript">
                $(document).ready(function() {
                    $(".ztzbj2 .sz").each(function() {
                        $(this).click(function(){
							//$(this).parents("h2").siblings(".ztzbj_sz").show().parent(".ztzbj2").children().(".ztzbj_sz").hide();
							/*.parents().siblings(".ztzbj_sz").show();*/
						});
                    });
                });
                
                </script>
                </div>
           </div>
           
           <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="images/close.gif" /></a></span></h2>
           <div class="ztzbj_con">
           		<div class="ztzbj_sz" style="display:block">
                <img src="${path }images/2.gif"  style="position:absolute; top:-11px; right:30px"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="${path }images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                <script type="text/javascript">
                	/*$(document).ready(function() {
                        $(".ztzbj .sz").click(function(){
							$(".ztzbj_sz").show();
						});
						$(".ztzbj_btn .qx").click(function(){
							$(".ztzbj_sz").hide();
						});
                    });*/
                </script>
           </div>
           <div class="ztzbj2">
                <div class="par1">
                <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                <div class="ztzbj2_con"></div>
                <div class="ztzbj_sz" style="top:32px; right:-95px;">
                <img src="${path }images/2.gif"  style="position:absolute; top:-12px; right:132px;"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="${path }images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                </div>
                <div class="par2">
                <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                <div class="ztzbj21_con">
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                 <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                
                </div>
                <div class="ztzbj_sz" style="top:32px; right:-95px">
                <img src="${path }images/2.gif"  style="position:absolute; top:-12px; right:132px"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="${path }images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                </div>
                <div class="par1">
                <h2>标题<span><a href="#" class="sz">设置</a><a href="#"><img src="${path }images/close.gif" /></a></span></h2>
                <div class="ztzbj2_con"></div>
                <div class="ztzbj_sz" style="top:32px; right:-95px">
                <img src="${path }images/2.gif"  style="position:absolute; top:-12px; right:132px"/>
                	<ul>
                    	<li><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</span><input type="text" /></li>
                        <li><span>内容类型:</span>
                        	<ul id="nrlx1">
                            	<li><input type="radio" name="nrlx" />文字</li>
                                <li><input type="radio" name="nrlx" />图片</li>
                                <li><input type="radio" name="nrlx" />博文</li>
                                <li><input type="radio" name="nrlx" />音乐</li>
                                <li><input type="radio" name="nrlx" />视频</li>
                            </ul>
                        </li>
                        <li><span>风&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span>
                        	<ul id="nrlx2">
                            	<li><input type="radio" name="fg" />有边框</li>
                                <li><input type="radio" name="fg" />无边框</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="ztzbj_btn"><a href="#"><img src="${path }images/qd1.png" /></a><a href="#" class="qx"><img src="images/qx1.png" /></a></div>
                </div>
                <script type="text/javascript">
                $(document).ready(function() {
                    $(".ztzbj2 .sz").each(function() {
                        $(this).click(function(){
							//$(this).parents("h2").siblings(".ztzbj_sz").show().parent(".ztzbj2").children().(".ztzbj_sz").hide();
							/*.parents().siblings(".ztzbj_sz").show();*/
						});
                    });
                });
                
                </script>
                </div>
           <div class="clear"></div>
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