<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Chuyển đổi °C sang °F</title>

<style>

body{
    background:linear-gradient(135deg,#fff8f0,#ffe8cc);
    font-family:Arial;
}

.container{
    width:500px;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:20px;
    text-align:center;
    box-shadow:0 8px 25px rgba(0,0,0,.2);
}

input{
    width:90%;
    padding:12px;
    border-radius:10px;
    border:1px solid #ccc;
}

button{
    margin-top:15px;
    background:#f77f00;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:10px;
    cursor:pointer;
}

button:hover{
    background:#c1121f;
}

</style>

</head>

<body>

<div class="container">

<h1>🌡️ Chuyển đổi °C sang °F</h1>

<form action="ConverterServlet" method="get">

    <input type="hidden"
           name="type"
           value="ctof">

    <input type="number"
           step="0.01"
           name="celsius"
           placeholder="Nhập độ C">

    <br>

    <button type="submit">
        Chuyển đổi
    </button>

</form>

<br>

<a href="index.jsp">⬅ Trang chủ</a>

</div>

</body>
</html>