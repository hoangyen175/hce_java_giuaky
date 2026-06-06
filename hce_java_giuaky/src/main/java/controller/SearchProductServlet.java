package controller;

import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/SearchProductServlet")
public class SearchProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        List<Product> products = new ArrayList<>();

        products.add(new Product(
1,
"Honey Garlic Chicken",
89000,
"images/honey-garlic.jpg"
));

products.add(new Product(
2,
"Spicy Korean Chicken",
99000,
"images/spicy-chicken.jpg"
));

products.add(new Product(
3,
"Cheese Chicken",
109000,
"images/cheese-chicken.jpg"
));

products.add(new Product(
4,
"Tteokbokki Cheese",
69000,
"images/tteokbokki.jpg"
));

products.add(new Product(
5,
"Kimchi Fried Rice",
79000,
"images/kimchi-rice.jpg"
));

products.add(new Product(
6,
"Pepsi",
15000,
"images/pepsi.jpg"
));

        String keyword = request.getParameter("keyword");

        List<Product> result = new ArrayList<>();

        if (keyword == null || keyword.trim().isEmpty()) {

            result = products;

        } else {

            for (Product p : products) {

                if (p.getName()
                        .toLowerCase()
                        .contains(keyword.toLowerCase())) {

                    result.add(p);
                }
            }
        }

        request.setAttribute("products", result);

        request.getRequestDispatcher("products.jsp")
                .forward(request, response);
    }
}