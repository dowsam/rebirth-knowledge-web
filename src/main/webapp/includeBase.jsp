<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
  response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
  response.setHeader("Pragma", "no-cache"); //HTTP 1.0
  response.setDateHeader("Expires", 0); //prevents caching at the proxy server 
  String path=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
  String path_80port=request.getScheme()+"://"+request.getServerName()+request.getContextPath()+"/";
  
  if( path.endsWith("//")){
	  path = path.substring( 0 , path.length()-1 );
  }
  if( path_80port.endsWith("//")){
	  path_80port = path_80port.substring( 0 , path_80port.length()-1 );
  }
%>
<c:set var="path" value="<%=path%>"></c:set> 
<script type="text/javascript" src="<%=path %>js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=path %>js/obj.js"></script>
