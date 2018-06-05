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

<table class="table"><table align="center", border="1">
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
        <th scope="row">1</th>
        <td><%=produkty.get(0)%>
        </td>
        <td><%=cena.get(0)%>
        </td>
    </tr>

    <tr>

        <%
            if (produkty.size() > 1) {
                out.println("<th scope=\"row\">" + 2 + "</th>");
                out.println("<td>" + produkty.get(1) + "</td>");
                out.println("<td>" + cena.get(1) + "</td>");
            }
            ;
        %>

    </tr>
    <tr>
        <%
            if (produkty.size() > 2) {
                out.println("<th scope=\"row\">" + 3 + "</th>");
                out.println("<td>" + produkty.get(2) + "</td>");
                out.println("<td>" + cena.get(2) + "</td>");
            }
            ;
        %>
    </tr>
    <tr>
        <%
            if (produkty.size() > 3) {
                out.println("<th scope=\"row\">" + 4 + "</th>");
                out.println("<td>" + produkty.get(3) + "</td>");
                out.println("<td>" + cena.get(3) + "</td>");
            }
            ;
        %>
    </tr>
    </div></tbody>
</table></table>

<%
    Object suma = request.getAttribute("suma");
    Object srednia = request.getAttribute("srednia");
%>
<h2><div style="text-align: center;">Suma: <%=suma%></div></h2>
<h2><div style="text-align: center;">Średnia cena produktu: <%=srednia%></div></h2>


</body>
</html>
