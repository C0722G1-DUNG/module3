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
        String product_description = request.getParameter("product_description");
        float list_price = Float.parseFloat(request.getParameter("list_price"));
        float discount_percent = Float.parseFloat(request.getParameter("discount_percent"));
        float discount_amount =  (list_price * discount_percent * 0.01f);
        float discount_price = list_price - discount_amount;

        request.setAttribute("product_description", product_description);
        request.setAttribute("list_price",list_price);
        request.setAttribute("discount_amount",discount_amount);
        request.setAttribute("discount_price",discount_price);
        request.getRequestDispatcher("result.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
