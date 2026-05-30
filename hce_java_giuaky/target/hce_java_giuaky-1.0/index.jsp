<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>HCE Java Giữa Kỳ</title>

<style>

body{
    font-family:Arial;
    background:#f0f0f0;
    margin:50px;
}

.box{
    background:white;
    width:400px;
    padding:20px;
    border-radius:10px;
}

</style>

</head>

<body>

<div class="box">

<h2>Chuyển Đổi Đơn Vị</h2>

<form action="convert" method="post">

<input type="number"
       name="value"
       step="any"
       required>

<br><br>

<select name="type">

<option value="cToF">
Celsius → Fahrenheit
</option>

<option value="kmToMiles">
Km → Miles
</option>

<option value="usdToVnd">
USD → VND
</option>

</select>

<br><br>

<button type="submit">
Chuyển đổi
</button>

</form>

<%
Object result=request.getAttribute("result");

if(result!=null){
%>

<h3>Kết quả: <%= result %></h3>

<%
}
%>

</div>

</body>
</html>