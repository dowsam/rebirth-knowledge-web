$(document).ready(function(){
	$('#emailError').hide();
	$('#passwordError').hide();
	$('#userNameError').hide();
	$('#email').blur(function(){
		var url = web_path+'system/sysUser/';
		$.getJSON(url+$('#email').val()+'/validateEmail',{},function(data){
			if(data.state=='error')
				$('#emailError').show();
			else
				$('#emailError').hide();
			alert($('#emailError').attr('display'));
		});
	});
	
	$('#userName').blur(function(){
		var url = web_path+'system/sysUser/validateUserName/';
		$.getJSON(url+$('#userName').val(),{},function(data){
			if(data.state=='error')
				$('#userNameError').show();
			else
				$('#userNameError').hide();
		});
	});
});

function createUser(){
	if($('#emailError').is(':visible') || $('#userNameError').is(':visible')){
		alert('请修改注册信息！')
		retrun ;
	}
	$('#userForm').submit();
}
