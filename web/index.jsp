<%--
  Created by IntelliJ IDEA.
  User: tokli
  Date: 05.06.2018
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
        integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  <title>Sklep Internetowy</title>
</head>
<body>
<h1><div style="text-align: center;">Witaj w naszym sklepie internetowym!</div></h1>
<h2><div style="text-align: center;">Podaj produkty i ich ceny:</div></h2>

<% %>
<form method="post" action="product">
  <div style="text-align: center;"><input type="text" name="produkt1" placeholder="Produkt 1">
  <input type="number" name="cena1" placeholder="Cena 1"><br>
  <input type="text" name="produkt2" placeholder="Produkt 2">
  <input type="number" name="cena2" placeholder="Cena 2"><br>
  <input type="text" name="produkt3" placeholder="Produkt 3">
  <input type="number" name="cena3" placeholder="Cena 3"><br>
  <input type="text" name="produkt4" placeholder="Produkt 4">
  <input type="number" name="cena4" placeholder="Cena 4"><br>
  <input type="submit" value="Zatwierdź →"></div>
</form>
</body>
</html>
