<%@ page import="java.time.LocalDate" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%

String sVuosiStr = request.getParameter("sVuosiStr");

int sVuosi = Integer.parseInt(sVuosiStr);
LocalDate paivamaara = LocalDate.now();
int tamaVuosi = paivamaara.getYear();
int ika = tamaVuosi - sVuosi;




if (ika < 18) {
	
	out.print("<meta http-equiv='refresh'content='5'; url='Kysy.jsp'>");
}

%>

<title>N�ytet��n henkil�tiedot</title>
</head>
<body>

<%

String etunimi = request.getParameter("etunimi");
String sukunimi = request.getParameter("sukunimi");
String sposti = request.getParameter("sposti");
String puhelin = request.getParameter("puhelin");



if (ika < 18) {
	
	out.print("Alaik�inen");

	
} else {
	out.print("Etunimi on: " + etunimi + "<br>");
	out.print("Sukunimi on: " + sukunimi + "<br>");
	out.print("S�hk�posti on: " + sposti + "<br>");
	out.print("Puhelinnumero on: " + puhelin + "<br>");
	out.print("Syntym�vuosi on: " + sVuosiStr + "<br>");
	out.print("Ik� on: " + ika + "<br>");
}



%>


</html>