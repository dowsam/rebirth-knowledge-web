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
	
}
function openCircleTopic(id){
	
}

function newTopic(id){
	var url=web_path+'/circleTopic/new/'+id;
	window.open(url);
}
function submitOper(jqId){
	$('#'+jqId).submit();
}