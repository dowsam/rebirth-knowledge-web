function submitForm(){alert(123);
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

function showAndHide(me,other){
	$('#'+me).css("display","block");
	$('#'+other).css("display","none");
}