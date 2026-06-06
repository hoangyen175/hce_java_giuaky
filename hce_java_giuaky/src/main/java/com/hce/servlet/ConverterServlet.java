package com.hce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ConverterServlet")
public class ConverterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws IOException {

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String type = request.getParameter("type");

        out.println("<html>");
        out.println("<body style='font-family:Arial;text-align:center;background:#fff8f0;'>");

        out.println("<div style='width:500px;margin:50px auto;background:white;padding:30px;border-radius:15px;box-shadow:0 0 15px gray;'>");

        try {

            if ("ctof".equals(type)) {

                double c =
                        Double.parseDouble(
                                request.getParameter("celsius"));

                double f = c * 9 / 5 + 32;

                out.println("<h1>🌡️ Kết quả</h1>");
                out.println("<h2>" + c +
                        " °C = " +
                        String.format("%.2f", f) +
                        " °F</h2>");
            }

            else if ("usd".equals(type)) {

                double usd =
                        Double.parseDouble(
                                request.getParameter("usd"));

                double vnd = usd * 26000;

                out.println("<h1>💵 Kết quả</h1>");
                out.println("<h2>" +
                        usd +
                        " USD = " +
                        String.format("%,.0f", vnd) +
                        " VNĐ</h2>");
            }

            else if ("gold".equals(type)) {

                double gold =
                        Double.parseDouble(
                                request.getParameter("gold"));

                double total =
                        gold * 12000000;

                out.println("<h1>🥇 Kết quả</h1>");
                out.println("<h2>" +
                        gold +
                        " chỉ vàng = " +
                        String.format("%,.0f", total) +
                        " VNĐ</h2>");
            }

        } catch (Exception e) {

            out.println("<h2>❌ Dữ liệu không hợp lệ</h2>");
        }

        out.println("<br><br>");

        out.println("<a href='index.jsp'>");
        out.println("⬅ Quay về Trang Chủ");
        out.println("</a>");

        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
}