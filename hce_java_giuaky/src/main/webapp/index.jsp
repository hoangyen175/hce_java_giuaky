<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HCE Java Giữa Kỳ - Bộ Chuyển Đổi Đơn Vị</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background: linear-gradient(135deg,#667eea,#764ba2);
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.card-custom{
    width:500px;
    border:none;
    border-radius:20px;
    box-shadow:0 10px 30px rgba(0,0,0,0.3);
}

.title{
    text-align:center;
    color:#4a4a4a;
    font-weight:bold;
}

.result-box{
    background:#f8f9fa;
    border-radius:10px;
    padding:15px;
    text-align:center;
    margin-top:20px;
}

.footer{
    text-align:center;
    color:gray;
    margin-top:15px;
    font-size:14px;
}

</style>

</head>
<body>

<div class="card card-custom p-4">

    <h2 class="title">
        🌡️ Bộ Chuyển Đổi Đơn Vị
    </h2>

    <p class="text-center text-muted">
        HCE JAVA GIỮA KỲ
    </p>

    <form action="convert" method="post">

        <div class="mb-3">
            <label class="form-label">
                Nhập giá trị
            </label>

            <input
                type="number"
                step="any"
                name="value"
                class="form-control"
                placeholder="Ví dụ: 100"
                required>
        </div>

        <div class="mb-3">
            <label class="form-label">
                Chọn loại chuyển đổi
            </label>

            <select name="type" class="form-select">

                <option value="cToF">
                    🌡️ Celsius → Fahrenheit
                </option>

                <option value="fToC">
                    🌡️ Fahrenheit → Celsius
                </option>

                <option value="kmToMiles">
                    📏 Km → Miles
                </option>

                <option value="milesToKm">
                    📏 Miles → Km
                </option>

                <option value="usdToVnd">
                    💵 USD → VND
                </option>

                <option value="vndToUsd">
                    💰 VND → USD
                </option>

            </select>
        </div>

        <button
            type="submit"
            class="btn btn-primary w-100">

            Chuyển Đổi
        </button>

    </form>

<%
Object result = request.getAttribute("result");

if(result != null){
%>

<div class="result-box">

    <h4>
        Kết quả
    </h4>

    <h2 class="text-success">
        <%= result %>
    </h2>

</div>

<%
}
%>

<div class="footer">
    Java Web Application | HCE
</div>

</div>

</body>
</html>