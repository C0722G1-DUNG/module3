import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet ", value = "/shopping")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("product-description");
        float listPrice = Float.parseFloat(request.getParameter("list-price"));
        float discountPercent = Float.parseFloat(request.getParameter("discount-percent"));
        float discountAmount =  (listPrice * discountPercent * 0.01f);
        float discountPrice = listPrice - discountAmount;

        request.setAttribute("product_description", productDescription);
        request.setAttribute("list_price",listPrice);
        request.setAttribute("discount_amount",discountAmount);
        request.setAttribute("discount_price",discountPercent);
        request.getRequestDispatcher("result.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
