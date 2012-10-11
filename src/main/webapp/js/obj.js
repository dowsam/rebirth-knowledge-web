$(document).ready(function(){
	//消息信件二级菜单
$(".top_tool ul li").each(function(index,dom) {
	
	if(index ==2){
		$(this).children().click(function(){
		$("#xinxi").show();
	});
	}
});
	
	$("#xinxi").mouseleave(function(){
		$(this).hide();
	});
	
	//搜索焦点
	$(".focus1").css("color","#ccc");
	$(".focus1").focus(function(){
		
		if($(this).val() == '输入关键字'){
			$(this).val('');
		};
	});
	$(".focus1").blur(function(){
		if($(this).val() == ''){
			$(this).val('输入关键字');
		};
		
	});
	//菜单切换
	$(".nav li").each(function() {
        $(this).children().click(function(){
			$(this).addClass("active").parents("li").siblings().children().removeClass("active");
		});
    });
	
	//个人中心tab
$(document).ready(function() {
	

var innerText = document.innerText ? 'innerText' : 'textContent'; 
var span = document.createElement('span'); 
span[innerText] = ''; 
span.className = 'controlSymbol'; 

function $(id){ 
return document.getElementById(id); 
} 
function $_(){ 
var args = arguments; 
var ret = []; 
for(var i = 0; i < args.length; i++){ 
var temp = document.getElementsByTagName(args[i]); 
try{ 
ret = ret.concat(Array.prototype.slice.call(temp,0)); 
}catch(e){ 
for(var j = 0; j < temp.length; j++){ 
ret.push(temp[j]); 
} 
} 
} 
return ret; 
} 
function addSymbol(h){ 
var innerSpan = span.cloneNode(true); 
h.insertBefore(innerSpan,h.firstChild); 
} 
function next(el){ 
while(el.nextSibling){ 
if(el.nextSibling.nodeType == 1){ 
return el.nextSibling; 
} 
el = el.nextSibling; 
} 
return null; 
} 
var outerWrap = $('outer_wrap'); 
var hs = $_('h4'); 
for(var i = 0 ; i < hs.length; i++){ 
addSymbol(hs[i]); 
} 
if (null != outerWrap){
	outerWrap.onclick = function(event){ 
		event = event || window.event; 
		var t = event.target || event.srcElement; 
		if(t.className == 'controlSymbol'){ 
			var sn = next(t.parentNode); 
			var snStyle = next(t.parentNode).style; 
			snStyle.display = (snStyle.display == 'block' || snStyle.display == '') ? 'none' : 'block'; 
			t[innerText] = t[innerText] == '' ? '':''; 
		} 
	} 
}

if(null != $('h4')){
	$("h4").each(function() {
		$(this).children().click(function(){
			$(this).children(".children").show();
		});
	});
}
});	
$(".children li").each(function() {
    $(this).children().click(function(){
		//alert("111");
		$(this).addClass("active2").parents().siblings().children().removeClass("active2");
	});
});
	
/*$(".children li").each(function() {
    $(this).children[1].click(function(){
		//alert("111");
		$(".jbxx").show();
		$(".grbq").hide();
	});
	$(this).children[2].click(function(){
		//alert("111");
		$(".jbxx").hide();
		$(".grbq").show();
	});
});	*/

	//首次登录导航nav
	$(".dldh_title li").each(function() {
		$(this).children().click(function(){
			$(this).parent().css("background","url(images/daoh2.png) no-repeat -123px 0px");
			$(this).css("color","#32A1EC")	
		});
	});
	//nav菜单鼠标hover
	$(".nav ul li").each(function() {
		$(this).hover(function(){
			$(this).children().addClass("_active").parent().siblings().children().removeClass("_active");
		});
	});

if($('#chooseBlogUser').val() == 'true'){
	$(".zsq").hide();
	$(".zqy").hide();
	$(".dybq").hide();
	$(".zby").show();
}
	//体验步骤
$("#dh1").click(function(){
	$(this).parents(".zsq").hide()
	$(".zqy").show();
	});
	
	$("#dh2").click(function(){
		//得到推荐标签
		var url=web_path+'system/sysUser/recommedTag';
		$.getJSON(url,{},function(data){
			$.each(function(i,item){
				var list=$("<li></li>");
				list.append("<a href=\"#\" onclick=\"addTag('"+item.name+"','"+item.id+"')\"><em>+</em>"+item.name+"</a>");
				list.appentTo("#recommendList");
			});
		});
		$(this).parents(".zqy").hide()
		$(".dybq").show();
	});
	
	$("#dh3").click(function(){
		var url=web_path+"system/sysUser/interesting/"+$('#userId').val();
		$('#userForm').attr("action",url);
		$('#userForm').attr("method","post");
		$('#userForm').submit();
		/*$.post(url,{},function(data){
			$('#interestUserBlock').html(data);
		},'html');*/
		$(this).parents(".dybq").hide();
		$(".zby").show();
	});
	
	$("#dh4").click(function(){
		$('#userForm').submit();
	});
	
	
	//阅览室yls_right2
	$(".left2 ul").each(function() {
		$(this).children().children().click(function(){
			$(".yls_right").hide();
			$(".yls_right2").show();
			$(".index").click(function(){
				$(".yls_right2").hide();
				$(".yls_right").show();
			});
		});
	});
	$(".left3 ul").each(function() {
		$(this).children().children().click(function(){
			$(".yls_right").hide();
			$(".yls_right2").show();
			$(".index").click(function(){
				$(".yls_right2").hide();
				$(".yls_right").show();
			});
		});
	});
	
	
	
	
	//高级编辑 编辑菜单
	$(".panr ul li").each(function() {
		$(this).children().click(function(){
			$(this).parent().addClass("activ5").siblings().removeClass("activ5");
		});
	});
	$(".part").each(function(index,dom){
		$(this).click(function(){
			$(this).next().show();
			
			$(".part").each(function(i,d){
				
				if(index != i){
					$(this).next().hide();	
				}												
			});
			//.parent("li").siblings().children(".panr ul").hide();
		});
	});
	
	//视频编辑 添加
	$("#tj").click(function(){
		$(".spbj_tj").show();
		});
		$(".spbj_tj h2 a").click(function(){
			$(".spbj_tj").hide();
		});
	//登陆框的背景水印控制
	$("#userName").focus(function(){
		if($("#userName").val()=='用户名')
			$("#userName").val('');
	});
	$("#userName").blur(function(){
		if($("#userName").val()=='')
			$("#userName").val('用户名');
	});
	$("#userPassWord").focus(function(){
		if($("#userPassWord").val()=='密码')
			$("#userPassWord").val('');
	});
	$("#userPassWord").blur(function(){
		if($("#userPassWord").val()=='')
			$("#userPassWord").val('密码');
	});
	
	
	
});