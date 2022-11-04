import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "studentServlet",value = "/student")
public class StudentServlet extends HttpServlet {
    private static List<Student> studentList = new ArrayList<>();
    static {
studentList.add(new Student("Dũng","06/12/2002","Hà Nội","https://gamek.mediacdn.vn/133514250583805952/2020/7/7/photo-1-1594098002042331340775.jpg"));
studentList.add(new Student("An","05/01/1991","Hà Nội","https://gaixinh.photo/wp-content/uploads/2021/10/anh-hot-girl-6.jpg"));
studentList.add(new Student("Bình","20/12/2002","Hà Nội","https://gamek.mediacdn.vn/133514250583805952/2020/7/7/photo-1-1594098002042331340775.jpg"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setAttribute("studentList",studentList);
request.getRequestDispatcher("list.jsp").forward(request,response);
    }
}
