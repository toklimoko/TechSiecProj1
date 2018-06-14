<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: tokli
  Date: 05.06.2018
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>

<h1><div style="text-align: center;">Podsumowanie</div></h1>
<h2><div style="text-align: center;">Twoje produkty</div></h2>

<% Object zakupy = request.getAttribute("ceny");
    List<Double> cena = (List<Double>) zakupy;

    Object listaProduktow = request.getAttribute("produkty");
    List<String> produkty = (List<String>) listaProduktow;
%>

<table class="table">
    <thead>
    <div style="text-align: center;">
    <tr>
        <th scope="col">Lp.</th>
        <th scope="col">Nazwa</th>
        <th scope="col">Cena</th>
    </tr>
    </div></thead>
    <tbody>
    <div style="text-align: center;">


    <tr>

        <%
            for(int i=0;i<produkty.size();i++){
                out.println("<tr>" + "<th scope=\"row\">" + (i+1) + "</th>" + "<td>" + produkty.get(i) + "</td>" + "<td>" + cena.get(i) + "</td>" + "</tr>");
            }
        %>

    </tr>

    </div></tbody>
</table>

<%
    Object suma = request.getAttribute("suma");
    Object srednia = request.getAttribute("srednia");
%>
<h2><div style="text-align: center;">Suma: <%=suma%></div></h2>
<h2><div style="text-align: center;">Średnia cena produktu: <%=srednia%></div></h2>


</body>
</html>
