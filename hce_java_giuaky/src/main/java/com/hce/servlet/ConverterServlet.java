package com.hce.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/convert")
public class ConverterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        double value =
                Double.parseDouble(request.getParameter("value"));

        String type =
                request.getParameter("type");

        double result = 0;

        switch(type){

            case "cToF":
                result = value * 9 / 5 + 32;
                break;

            case "kmToMiles":
                result = value * 0.621371;
                break;

            case "usdToVnd":
                result = value * 26000;
                break;
        }

        request.setAttribute("result", result);

        request.getRequestDispatcher("/index.jsp")
               .forward(request,response);
    }
}