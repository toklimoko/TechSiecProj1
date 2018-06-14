<%@ page import="model.MovieRead" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Movie" %>
<%@ page import="model.MovieSort" %><%--
  Created by IntelliJ IDEA.
  User: Insss
  Date: 14.06.2018
  Time: 01:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">

    <title>list group with active state</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>

<body>
<%String sort=(String)request.getParameter("sort");

out.println(sort);
    if(sort==null){
        sort="id";}
    ArrayList<String> data=MovieSort.run(sort);
        if(data==null){
            data=MovieRead.run();
        }

%>

<div class="container">

    <h2>Twoja baza danych multimediów</h2>
    <div class="list-group">
       <%
        for(int i=0;i<data.size();i++){
        out.println("<a href=\""+i+"\" class=\"list-group-item\">"+data.get(i)+"</a>");
        }
        %>
    </div>
</div>
<form action="betterlist.jsp">
  Sortuj według:
    <input type="radio" name="sort" value="title"> tytułu,
    <input type="radio" name="sort" value="year"> roku,
    <input type="radio" name="sort" value="rate"> ocenie,
    <input type="radio" name="sort" value="type"> rodzaju,
    <input type="radio" name="sort" value="id"> id rosnąco,
    <input type="radio" name="sort" value="id desc"> id malejąco
    <input type="submit" name="sortBtn" value="Sortuj"><br>
</form>


<form action="index.jsp">
    <input type="submit" value="Wróć">
</form>
</body>
</html>