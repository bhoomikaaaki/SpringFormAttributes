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
<h3>Reservation Form</h3>
<form:form action="submitForm" modelAttribute="reservation">
	FirstName: <form:input path="firstName"/>   
	<br>
	LastName: <form:input path="lastName"/>
	<br>
	Gender:   
        Male<form:radiobutton path="gender" value="Male"/>  
        Female<form:radiobutton path="gender" value="Female"/>
      <br>
    Meals:
    	BreakFast<form:checkbox path="food" value="BreakFast"/> 
    	Lunch<form:checkbox path="food" value="Lunch"/> 
    	Dinner<form:checkbox path="food" value="Dinner"/> 
    <br>
    Leaving From: <form:select path="cityFrom">
    <form:option path="guntur" value="Guntur"/>
    <form:option path="vijayawada" value="vijayawada"/>
    <form:option path="Hyderabad" value="Hyderabad"/>
    <form:option path="Tirupathi" value="Tirupathi"/>
    <form:option path="Kurnool" value="Kurnool"/>
    </form:select>
    
    Going To: <form:select path="cityTo">
    <form:option path="guntur" value="Guntur"/>
    <form:option path="vijayawada" value="vijayawada"/>
    <form:option path="Hyderabad" value="Hyderabad"/>
    <form:option path="Tirupathi" value="Tirupathi"/>
    <form:option path="Kurnool" value="Kurnool"/>
    </form:select>
    
    <input type="submit" value="Submit"/>  
    
</form:form>
</body>
</html>