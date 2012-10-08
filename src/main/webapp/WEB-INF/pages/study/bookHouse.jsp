<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="/../includeBase.jsp"%>
<head>
<title>我的书房</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
<link href="${path }css/pageCss.css" rel="stylesheet" />
<script type="text/javascript" src="${path }js/jquery.form.js"></script>
<script type="text/javascript"  src="${path }js/study/study.js"></script>
<script type="text/javascript"  src="${path }js/study/shortMsg/shortMsg.js"></script>
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
            <li id="tool_2"><a href="grzx.html">设置</a></li>
            <li id="tool_3"><a>消息
              <ul id="xinxi">
                <li>
                  <label><a href="#" target="_blank">查看信箱</a></label>
                  (<span>22</span>)</li>
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
          <span>
          <input type="button" value="搜索" />
          </span><br />
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
  <!----------------------------------------我的书房------------------------------------------>
  <div class="study">
    <div class="st_left">
      <div class="st_left_top">
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
            <li>头衔:&nbsp;<span>飞机</span></li>
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
      <div class="st_left_bottom">
        <h3><a style="background:url(images/shug.png) no-repeat 20px center;">我的书柜</a></h3>
        <div class="st_left_tree"></div>
        <h3><a style="background:url(images/xiaox.png) no-repeat 20px center;">我的消息</a></h3>
        <ul style="display:block" id="b">
          <li class="active4"><a>写信息</a></li>
          <li><a>通讯录</a></li>
        </ul>
        <h3><a href="#" style="background:url(images/biaoq.png) no-repeat 20px center;">我的标签</a></h3>
        <h3><a style="background:url(images/guanz.png) no-repeat 20px center;">好友关注</a></h3>
        <ul id="c">
          <li><a>我关注的人</a></li>
          <li><a>我的粉丝</a></li>
          <li><a>我的密友</a></li>
        </ul>
        <h3><a style="background:url(images/guij.png) no-repeat 20px center;">访问轨迹</a></h3>
        <ul>
          <li><a>我的阅读历史</a></li>
          <li><a>最近谁来过</a></li>
          <li><a>最近谁转藏</a></li>
        </ul>
        <h3><a style="background:url(images/guany.png) no-repeat 20px center;">好友动态</a></h3>
        <ul>
          <li><a>好友最新原创</a></li>
          <li><a>好友最新收藏</a></li>
          <li><a>好友最新推荐</a></li>
          <li><a>好友最新评论</a></li>
          <li><a>好友最近关注</a></li>
        </ul>
      </div>
    </div>
    <div class="st_right">
    	<input id="userId" type="hidden" value="${user.id }" />
      <div class="st_right_top">
        <ul>
          <li> <a href="${path }study/blog/new"><img src="images/bj.png" /></a>
            <!--<p><a href="#">编辑</a></p>-->
          </li>
          <li> <a href="${path }study/theme/new"><img src="images/ztz.png" /></a>
            <!--<p><a href="#">主题展</a></p>-->
          </li>
          <li> <a href="${path }study/music/new"><img src="images/yyh.png" /></a>
            <!--<p><a href="#">音乐</a></p>-->
          </li>
          <li> <a href="${path }study/worldWin/new"><img src="images/sjc.png" /></a>
            <!--<p><a href="#">视频</a></p>-->
          </li>
          <li> <a href="${path }study/photo/new"><img src="images/xc.png" /></a>
            <!--<p><a href="#">相册</a></p>-->
          </li>
          <li> <a href="#"><img src="images/zs.png" /></a>
            <!--<p><a href="#">网文摘手</a></p>-->
          </li>
          <li> <a href="${path }study/wiki/new"><img src="images/wiki.png" /></a>
            <!--<p><a href="#">网文摘手</a></p>-->
          </li>
        </ul>
      </div>
      <div class="clear"></div>
      <div class="b" style="display:block;">
          <div class="st_right_left">
            <h3>好友来过</h3>
            <div class="frind0">
              <ul>
                <li><a href="shufang.html"><img src="images/tx/01.jpg" /></a></li>
                <li><a href="shufang.html"><img src="images/tx/02.jpg" /></a></li>
                <li><a href="shufang.html"><img src="images/tx/03.jpg" /></a></li>
                <li><a href="shufang.html"><img src="images/tx/04.jpg" /></a></li>
                <li><a href="shufang.html"><img src="images/tx/05.jpg" /></a></li>
                <li><a href="shufang.html"><img src="images/tx/06.jpg" /></a></li>
                <li><a href="shufang.html"><img src="images/tx/07.jpg" /></a></li>
                <li><a href="shufang.html"><img src="images/tx/08.jpg" /></a></li>
              </ul>
            </div>
            <hr />
            <div class="wdgc">
                <div class="wdgc_tit"><h2>我最欢迎的博文</h2>
                    <ul>
                        <li><a>编辑</a></li>
                        <li><a><img src="images/min.gif" /></a></li>
                        <li><a><img src="images/close.gif" /></a></li>
                    </ul>
                </div>
                <ul class="nr">
                    <li>1、<a href="liulan.html">对自己的文章进行分类管理</a></li>
                    <li>2、<a href="liulan.html">对自己的文章进行分类管理</a></li>
                    <li>3、<a href="liulan.html">对自己的文章进行分类管理</a></li>
                    <li>4、<a href="liulan.html">对自己的文章进行分类管理</a></li>
                    <li>5、<a href="liulan.html">对自己的文章进行分类管理</a></li>
                    <li>6、<a href="liulan.html">对自己的文章进行分类管理</a></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="gltj">
                <div class="gltj_tit"><h2>我推荐的博文</h2>
                    <ul>
                        <li><a>编辑</a></li>
                        <li><a href="#"><img src="images/min.gif" /></a></li>
                        <li><a href="#"><img src="images/close.gif" /></a></li>
                    </ul>
                </div>
                <ul class="nr2">
                    <li><div><a href="liulan.html">对自己的文章进行分类管理</a></div><a>张三李四</a><span>2012-12-10</span></li>
                    <li><div><a href="liulan.html">对自己的文章进行分类管理</a></div><a>张三李四</a><span>2012-12-10</span></li>
                    <li><div><a href="liulan.html">对自己的文章进行分类管理</a></div><a>张三李四</a><span>2012-12-10</span></li>
                    <li><div><a href="liulan.html">对自己的文章进行分类管理</a></div><a>张三李四</a><span>2012-12-10</span></li>
                    <li><div><a href="liulan.html">对自己的文章进行分类管理</a></div><a>张三李四</a><span>2012-12-10</span></li>
                    <li><div><a href="liulan.html">对自己的文章进行分类管理</a></div><a>张三李四</a><span>2012-12-10</span></li>
                    <li><div><a href="liulan.html">对自己的文章进行分类管理</a></div><a>张三李四</a><span>2012-12-10</span></li>
                </ul>
            </div>
            <div class="gyfk">
                <div class="gyfk_tit"><h2>标题</h2>
                    <ul>
                        <li><a>编辑</a></li>
                        <li><a href="#"><img src="images/min.gif" /></a></li>
                        <li><a href="#"><img src="images/close.gif" /></a></li>
                    </ul>
                </div>
                <ul class="nr3">
                    <li><a>全部</a>|</li>
                    <li><a>转发</a>|</li>
                    <li><a>回复</a>|</li>
                    <li><a>转藏</a>|</li>
                    <li><a>评论</a>|</li>
                    <li><a>关注</a></li>
                </ul>
                <div class="clear"></div>
                <div class="nr_con">
                    <ul id="nr4">
                        <li style="display:block">还没有馆友转藏或评论的我文章！</li>
                        <li>还没有馆友转发我的随笔！</li>
                        <li>还没有馆友回复我的随笔！</li>
                        <li>还没有馆友转藏我的文章！</li>
                        <li>还没有馆友对我的文章发表评论！</li>
                        <li>还没有馆友关注我！</li>
                    </ul>
                </div>
            </div>
           
          </div>
          <div class="st_right_right">
            <div class="tjzt">
              <h3>推荐主题</h3>
              <ul>
                <li><a href="zhutizhanshi.html">英文、中之间的文本、网页翻译。</a></li>
                <li><a href="zhutizhanshi.html">英文、中之间的文本、网页翻译。</a></li>
                <li><a href="zhutizhanshi.html">英文、中文间的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文、中文之间的文本、网页翻</a></li>
                <li><a href="zhutizhanshi.html">英文、中文间的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文、中文和文之间的文本、译。</a></li>
                <li><a href="zhutizhanshi.html">英文、中文和日文之间的文本。</a></li>
              </ul>
            </div>
            <div class="tjhd">
              <h3>推荐活动</h3>
              <ul>
                <li><a href="zhutizhanshi.html">英中文和文之间的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文、文文之间的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文文和文之间的文本、网页翻</a></li>
                <li><a href="zhutizhanshi.html">英文、日文之间的文本、网页翻译</a></li>
                <li><a href="zhutizhanshi.html">英文、中文日文之间的文本、译。</a></li>
                <li><a href="zhutizhanshi.html">英文文和文之间的文本、网页翻译</a></li>
              </ul>
            </div>
            <div class="tjsf">
              <h3>推荐书房</h3>
              <ul>
                <li> <a href="shufang.html"><img src="images/tx/01.jpg" /></a>
                  <p><a href="shufang.html">张三李四</a></p>
                </li>
                <li> <a href="shufang.html"><img src="images/tx/02.jpg" /></a>
                  <p><a href="shufang.html">张三李四</a></p>
                </li>
                <li> <a href="shufang.html"><img src="images/tx/03.jpg" /></a>
                  <p><a href="shufang.html">张三李四</a></p>
                </li>
                <li> <a href="shufang.html"><img src="images/tx/04.jpg" /></a>
                  <p><a href="shufang.html">张三李四</a></p>
                </li>
                <li> <a href="shufang.html"><img src="images/tx/05.jpg" /></a>
                  <p><a href="shufang.html">张三李四</a></p>
                </li>
                <li> <a href="shufang.html"><img src="images/tx/02.jpg" /></a>
                  <p><a href="shufang.html">张三李四</a></p>
                </li>
              </ul>
            </div>
          </div>
          <div class="clear"></div>
      </div>
      <div id="shortMsg" class="b" style=" height:538px;"> </div>
      <div id="myAttention" class="c">我关注的人
      </div>
      <div id="myFans" class="c">我的粉丝</div>
      <div id="myTag" class="c"></div>
      <div id="myFriend" class="c">
      	<div class="c3">
            <div class="tx2">我有一个密友(<b>添加</b>新的密友,<b>删除</b>现在的密友)</div>
            <h2>共有5个好友</h2>
            <ul>
              <li><a href="#"><img src="images/tx/01.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/02.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/03.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/04.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/05.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/06.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/07.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/08.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/09.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
              <li><a href="#"><img src="images/tx/010.jpg" /></a><br /><span><a href="#">张三李四</a></span></li>
            </ul>
        </div>
        <div class="tjmy" class="tjsc">
       	  <div class="clo"><a href="#">X</a></div>
        	<p>密友申请被对方接受后,你们彼此的好友名录中会出现对方。</p><br />
            <h2>请输入好友昵称：</h2>
            <input type="text" />
            <h2>想对密友说的话：</h2>
            <textarea></textarea>
            <div class="tjmy_btn"><img src="images/qd1.png" />&nbsp;&nbsp;<img src="images/qx1.png" /></div>
        </div>
        <div class="scmy" class="tjsc">
        	<div class="clo"><a href="#">X</a></div>
        	<h2>请输入好友昵称：</h2>
            <input type="text" />
             <div class="tjmy_btn"><img src="images/qd1.png" />&nbsp;&nbsp;<img src="images/qx1.png" /></div>
        </div>
        <script type="text/javascript">
        </script>
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