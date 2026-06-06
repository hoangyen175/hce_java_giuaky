<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<title>Tính giá vàng</title>

<style>

body{
    font-family:Arial;
    background:#fff8f0;
    text-align:center;
}

.container{
    width:450px;
    margin:50px auto;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 0 15px gray;
}

h1{
    color:#c1121f;
}

input[type=number]{
    width:80%;
    padding:10px;
    margin:10px;
}

button{
    background:#f77f00;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:8px;
}

</style>

</head>

<body>

<div class="container">

<h1>🥇 Tính giá vàng</h1>

<p>Giá vàng: 12.000.000 VNĐ/chỉ</p>

<form action="ConverterServlet" method="get">

    <input type="hidden"
           name="type"
           value="gold">

    <input type="number"
           step="0.1"
           name="gold"
           placeholder="Nhập số chỉ vàng">

    <br>

    <button type="submit">
        Tính tiền
    </button>

</form>

</div>

</body>
</html>