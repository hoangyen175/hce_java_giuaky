<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*"%>
<%@ page import="model.Product"%>

<!DOCTYPE html>

<html>

<head>

<title>KOREAN FOOD PLACE</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#fff8f0;
}

.header{
    background:#c1121f;
    color:white;
    text-align:center;
    padding:25px;
}

.search-box{
    text-align:center;
    margin:30px;
}

.search-box input[type=text]{
    width:300px;
    padding:10px;
    border-radius:8px;
    border:1px solid gray;
}

.search-box input[type=submit]{
    padding:10px 20px;
    border:none;
    background:#f77f00;
    color:white;
    border-radius:8px;
    cursor:pointer;
}

.menu-container{
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
    gap:25px;
    padding:20px;
}

.card{
    width:280px;
    background:white;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 4px 12px rgba(0,0,0,0.2);
}

.card img{
    width:100%;
    height:220px;
    object-fit:cover;
}

.card-body{
    padding:15px;
    text-align:center;
}

.card-body h3{
    color:#c1121f;
}

.price{
    color:#f77f00;
    font-size:20px;
    font-weight:bold;
}

.cart-btn{
    background:#c1121f;
    color:white;
    border:none;
    padding:10px 15px;
    border-radius:8px;
    cursor:pointer;
}

.footer{
    text-align:center;
    margin:30px;
}

.banner{

    height:280px;

    background:
    linear-gradient(
    rgba(0,0,0,.4),
    rgba(0,0,0,.4)
    ),
    url("images/Neutral Blue Minimalism Motivational Life Quote Desktop Wallpaper.png");

    background-size:cover;

    background-position:center;

    color:white;

    display:flex;

    flex-direction:column;

    justify-content:center;

    align-items:center;
}

.menu-container{

    display:flex;

    flex-wrap:wrap;

    justify-content:center;

    gap:25px;

    padding:30px;
}

.card{

    width:280px;

    background:white;

    border-radius:20px;

    overflow:hidden;

    box-shadow:0 5px 15px rgba(0,0,0,.2);

    transition:.4s;
}

.card:hover{

    transform:
    translateY(-10px)
    scale(1.03);
}

.card img{

    width:100%;

    height:220px;

    object-fit:cover;

    transition:.5s;
}

.card:hover img{

    transform:scale(1.1);
}

.card-body{

    padding:15px;

    text-align:center;
}

.price{

    color:#f77f00;

    font-size:22px;

    font-weight:bold;
}

.cart-btn{

    background:#c1121f;

    color:white;

    border:none;

    padding:10px 15px;

    border-radius:10px;
}

</style>

</head>

<body>

<div class="banner">

<h1>
🍗 KOREAN FOOD PLACE
</h1>

<p>
Authentic Korean Fast Food Restaurant
</p>

</div>

<div class="search-box">

<form action="SearchProductServlet" method="get">

    <input
            type="text"
            name="keyword"
            placeholder="Tìm món ăn...">

    <input
            type="submit"
            value="Tìm kiếm">

</form>

</div>

<div class="menu-container">

<%
List<Product> products =
(List<Product>)request.getAttribute("products");

for(Product p : products){
%>

<div class="card">

<img src="<%=p.getImage()%>">

<div class="card-body">

<h3>
<%=p.getName()%>
</h3>

<p class="price">
<%=String.format("%,.0f",p.getPrice())%> VNĐ
</p>

<button class="cart-btn">
🛒 Thêm vào giỏ hàng
</button>

</div>

</div>

<%
}
%>

</div>

</body>

</html>