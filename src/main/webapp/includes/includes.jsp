<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%--<%@ taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ taglib prefix="aep" uri="http://www.aepenergy.com/security/tags"%>
<%@ taglib prefix="sessionConversation" uri="http://www.aepenergy.com/support/tags"%>--%>
<%
    String userAgent1 = request.getHeader("User-Agent");
    if (userAgent1 != null && userAgent1.indexOf("MSIE") == -1) {
        //out.print("<link href=\"" + request.getContextPath() + "/styles/displaytag.css\" rel=\"stylesheet\" type=\"text/css\">");

    } else {
        //out.print("<link href=\"" + request.getContextPath() + "/styles/displaytag.css\" rel=\"stylesheet\" type=\"text/css\">");
    }
%>

<%
    if (request.getSession() != null
            && request.getSession().getAttribute("securityToken") != null) {
        request.setAttribute("nekotces", request.getSession().getAttribute("securityToken"));
    }
%>


