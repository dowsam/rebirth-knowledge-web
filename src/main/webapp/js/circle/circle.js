function submitForm(){
	$('#circleForm').submit();
}

function getSecCategory(id){
	var url=web_path+'circle/secondCategory/'+id;
	$.getJSON(url,{},function(data){
		$('#secCategory').children().remove();
		$.each(data,function(i,item){
			var opt=$("<option value=\""+item.id+"\">"+item.name+"</option>");
			opt.appendTo("#secCategory");
		});
	});
}

function registerHostInfo(){
	if($("#registMaster").attr('checked') == 'checked'){
			$(".disp").css("display","block")
	}else{
			$(".disp").css("display","none")
	}

}

function showAndHide(me,other,obj){
	$(obj).addClass("activ10").parent().siblings().children().removeClass("activ10");
	$('#'+me).show();
	$('#'+other).hide();
}

function changeTab(obj){
	$(obj).css("color","#000").parent().siblings().children().css("color","#fff");
	$(obj).parent().addClass("activ9").siblings().removeClass("activ9");
	$('#newly').toggle();
	$('#my').toggle();
}

function submitTopic(){
	$('#topicForm').submit();
}

function openCircle(id){
	var url=web_path+'circle/detail/'+id;
	window.open(url);
}
function openCircleTopic(id){
	var url=web_path+'circleTopic/show/'+id;
	window.open(url);
}

function newTopic(id){
	var url=web_path+'circleTopic/new/'+id;
	window.open(url);
}
function submitOper(jqId){
	$('#'+jqId).submit();
}
function getCircleManageUrl(index,id){alert(index);
	//index 0成员审批1成员列表2圈文审核3操作记录4数据统计5基本设置6副圈主管理
	var url;
	switch(index){
	case 0:
		url=web_path+'circle/approvalMem/'+id;
		break;
	case 1:
		url = web_path+'circle/member/'+id;
		break;
	case 2:
		url = web_path+'circle/approvalTopic/'+id;
		break;
	case 3:
		url = web_path+'circle/';
		break;
	case 4:
		break;
	case 5:
		url = web_path+'circle/'+id+'/edit';
		break;
	case 6:
		break;
	}
	return url;
}