<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài Giữa Kỳ Môn Java Web</title>

<style>

body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:
    linear-gradient(
    135deg,
    #fff8f0,
    #ffe8cc,
    #fff3e0
    );

    min-height:100vh;
}

.header{

    background:
    linear-gradient(
    90deg,
    #c1121f,
    #d62828,
    #f77f00
    );

    color:white;

    text-align:center;

    padding:40px;
}

.menu{

    margin-top:50px;
}

.menu a{

    display:block;

    width:420px;

    margin:20px auto;

    text-align:center;

    padding:18px;

    background:white;

    color:#c1121f;

    border-radius:20px;

    text-decoration:none;

    font-size:20px;

    font-weight:bold;

    transition:.3s;

    box-shadow:0 5px 15px rgba(0,0,0,.2);
}

.menu a:hover{

    transform:
    translateY(-5px)
    scale(1.03);

    background:#c1121f;

    color:white;
}

</style>

</head>

<body>

<div class="header">

    <h1>🍗 BÀI GIỮA KỲ MÔN JAVA 🍗</h1>

    <h2>KOREAN FOOD PALACE</h2>

    <p>
        Hệ thống chuyển đổi và quản lý thực đơn nhà hàng
    </p>

</div>

<div class="menu">

    <a href="ctof.jsp">
        🌡️ Chuyển đổi °C sang °F
    </a>

    <a href="usd.jsp">
        💵 Chuyển đổi USD sang VND
    </a>

    <a href="gold.jsp">
        🥇 Tính giá vàng
    </a>

    <a href="SearchProductServlet">
        🍗 Thực đơn nhà hàng
    </a>

</div>

</body>
</html>