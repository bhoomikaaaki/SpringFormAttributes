<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Your reservation is confirmed successfully. Please, re-check the details.</p>  
First Name : <c:out value='${reservation.firstName}'/>
First Name : ${reservation.firstName} <br>  
Last Name : ${reservation.lastName} <br>  
Gender: ${reservation.gender}<br>  
Meals:   
<ul>
<c:forEach var="meal" items="${reservation.food}">
<li>${meal}</li>
</c:forEach>
</ul>
Leaving From : ${reservation.cityFrom} <br>  
Going To : ${reservation.cityTo}  
</body>
</html>