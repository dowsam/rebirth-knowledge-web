$(document).ready(function(){
	$('#emailError').hide();
	$('#passwordError').hide();
	$('#userNameError').hide();
});

function go2email(email){
	var index=email.indexOf('@');
	var url='http://mail.'+email.substring(index,email.length);
	window.open(url);
}