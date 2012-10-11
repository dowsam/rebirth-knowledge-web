$(document).ready(function(){
	
});

//查找公司
function searchCompany(){
	var url=web_path+'system/sysUser/'+$('#search').val()+'/searchCompany';
	$.getJSON(url,{},function(data){
		$.each(data,function(i,item){
			var list=$("<li></li>");
			list.append("<input type=\"radio\" name=\"company\" value=\""+item.id+"\">"+item.name+"</input> ");
			list.appendTo("#companyList");
		});
	});
}

//添加至已选中的标签
function addTag(name,id){
	var tag = $("<li></li>");
	tag.append(name);
	tag.append("<input type=\"hidden\" name=\"addedTag\" value=\""+id+"\" />");
	tag.append("<a href=\"#\" onclick=\"removeTag(this)\"><em>-</em></a>");
	tag.appendTo("#addedTag");
}

//删除已选中的标签
function removeTag(obj){
	$(obj).parent().remove();
}

//创建新的标签
function createTag(){
	var url=web_path+'system/sysUser/'+$('#createTagInput').val()+"/addTag";
	$.getJSON(url,{},function(data){
		addTag(data.name,data.id);
	});
}

//添加感兴趣的用户
function addBlogUser(id){
	var interestUsers=$("<input type=\"hidden\" name=\"blogUser\" value="+id+"/>")
	interestUsers.appendTo("#interestUserBlock");
}
