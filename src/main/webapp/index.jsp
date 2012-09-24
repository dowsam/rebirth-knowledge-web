<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../includeBase.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首 页</title>
<link href="${path }css/reset.css" rel="stylesheet" />
<link href="${path }css/index.css" rel="stylesheet" />
<link href="${path }css/globel.css" rel="stylesheet" />
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
	<script type="text/javascript">
    </script>
    <div class="banner" style="mar1gin-top:-20px">
        <div class="left1">
           <div id="banner"> 
                <div id="banner_bg"></div> 
                <!--标题背景--> 
                <div id="banner_info"></div> 
                <!--标题--> 
                <ul> 
                    <li>1</li> 
                    <li>2</li> 
                    <li>3</li> 
                    <li>4</li> 
                </ul> 
                <div id="banner_list"> 
                <a href="#" target="_blank"><img src="http://www.poluoluo.com/jzxy/UploadFiles_333/201110/2011101614491219.jpg" title="橡树小屋的blog" alt="橡树小屋的blog" /></a> 
                <a href="#" target="_blank"><img src="http://www.poluoluo.com/jzxy/UploadFiles_333/201110/2011101614491286.jpg" title="橡树小屋的blog" alt="橡树小屋的blog" /></a> 
                <a href="#" target="_blank"><img src="http://www.poluoluo.com/jzxy/UploadFiles_333/201110/2011101614491283.jpg" title="橡树小屋的blog" alt="橡树小屋的blog" /></a> 
                <a href="#" target="_blank"><img src="http://www.poluoluo.com/jzxy/UploadFiles_333/201110/2011101614491389.jpg" title="橡树小屋的blog" alt="橡树小屋的blog" /></a> 
                </div> 
</div> 
        </div>
        <div class="login">
          <ul>
            <li class="text"><span>用户名:</span>
              <input id="userName" type="text" value="用户名" />
            </li>
            <li class="text"><span>密 码:</span>
              <input id="userPassWord" type="text" value="密码" />
            </li>
            <li style="height:20px; margin:0px; font-size:12px">
              <input type="checkbox" />
              记住密码?&nbsp;<i><a href="#" style="font-size:12px">忘记密码？</a></i></li>
            <div class="clear"></div>
            <li style="padding-left:55px">
              <div id="submitBtn" class="sibmit"><a>登 录</a></div>
              <div class="sibmit"><a href="${path }system/sysUser/new">注 册</a></div>
            </li>
          </ul>
        </div>
      </div>
    <div class="content">
      <div class="c_left">
        <div class="c_yuanc">
          <div class="tit">最新原创</div>
          <ul>
            <li><a href="liulan.html">内容浏览</a><span>哈哈哈哈</span></li>
            <li><a href="shijiechuang.html">视界窗浏览</a><span>哈哈哈哈2</span></li>
            <li><a href="yinyuehe.html">音乐盒浏览</a><span>哈哈哈哈3</span></li>
            <li><a href="xiangce2.html">相册浏览</a><span>哈哈哈哈4</span></li>
            <li><a href="liulan.html">内容浏览</a><span>哈哈哈哈</span></li>
            <li><a href="shijiechuang.html">视界窗浏览</a><span>哈哈哈哈2</span></li>
            <li><a href="yinyuehe.html">音乐盒浏览</a><span>哈哈哈哈3</span></li>
            <li><a href="xiangce2.html">相册浏览</a><span>哈哈哈哈4</span></li>
            <li><a href="liulan.html">内容浏览</a><span>哈哈哈哈</span></li>
            <li><a href="shijiechuang.html">视界窗浏览</a><span>哈哈哈哈2</span></li>
            <li><a href="yinyuehe.html">音乐盒浏览</a><span>哈哈哈哈3</span></li>
            <li><a href="xiangce2.html">相册浏览</a><span>哈哈哈哈4</span></li>
            <li><a href="liulan.html">内容浏览</a><span>哈哈哈哈</span></li>
            <li><a href="shijiechuang.html">视界窗浏览</a><span>哈哈哈哈2</span></li>
            <li><a href="yinyuehe.html">音乐盒浏览</a><span>哈哈哈哈3</span></li>
            <li><a href="xiangce2.html">相册浏览</a><span>哈哈哈哈4</span></li>
            <div class="more"><a href="#">more >></a></div>
          </ul>
        </div>
        <div class="c_zhuanc">
          <div class="tit">正在转藏</div>
          <ul>
            <li>
              <div class="tji"> <b>9</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="liulan.html">内容浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="tji"> <b>999</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="shijiechuang.html">视界窗浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="tji"> <b>9</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="yinyuehe.html">音乐盒浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="tji"> <b>9</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="xiangce2.html">相册浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="tji"> <b>9</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="liulan.html">内容浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="tji"> <b>999</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="shijiechuang.html">视界窗浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="tji"> <b>9</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="yinyuehe.html">音乐盒浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="tji"> <b>9</b>
                <p><i>次转藏</i></p>
              </div>
              <div class="list">
                <lable><a href="xiangce2.html">相册浏览</a></lable>
                <br />
                <div><span><a href="#">部门查多</a></span>从<span><a href="#">7张整改</a></span>处转藏</div>
              </div>
              <div class="clear"></div>
            </li>
            <div class="more"><a href="#">more >></a></div>
          </ul>
        </div>        
        <div class="clear"></div>
        <div class="c_flyd">
          <div class="tit">分类阅读</div>
          <div class="clear"></div>
          <ul>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/01.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/02.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/03.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/04.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/05.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/08.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/07.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/08.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
            <li>
              <div class="ico"><a href="yls.html"><img src="images/tx/09.jpg" border="0"/></a></div>
              <div class="ico_r">
                <div class="flag"><a href="yls.html">图片/艺术</a></div>
                <div class="clear"></div>
                <p class="child_li">美图、趣图、美女、会话/书法、瓷器/玉石、壁纸...</p>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="c_right">
        <div class="c_zxhd">
          <div class="tit">最新活动</div>
          <ul>
            <li><a href="zhutizhanshi.html">官二代砍人叫嚣“我家开”气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人叫嚣“我家开”气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人叫“是我开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍叫嚣“我家开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二砍人嚣“是我家开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官代砍人嚣“是我家开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">二代砍人嚣“是我家开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人嚣“是我家”底气何来？</a></li>
          </ul>
        </div>
        <div class="c_tjzt">
          <div class="tit">推荐主题</div>
          <ul>
            <li><a href="zhutizhanshi.html">官二代砍人叫嚣“我家开”气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人叫嚣“我家开”气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人叫嚣“我开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人叫嚣“家开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人嚣“是我开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人嚣“是我开”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人嚣“是我家”底气何来？</a></li>
            <li><a href="zhutizhanshi.html">官二代砍人嚣“是我家”底气何来？</a></li>
          </ul>
        </div>
        <div class="clear"></div>
        <div class="c_tjsf">
          <div class="tit">推荐书房</div>
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
<script type="text/javascript" src="js/banner.js"></script> 
</body>
</html>