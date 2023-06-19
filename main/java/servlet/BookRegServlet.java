package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import beans.BookBean;


@WebServlet("/BookRegServlet")
public class BookRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ServletContext ctx = request.getServletContext();
		 MultipartRequest multi = new MultipartRequest(
			        request,
			        ctx.getRealPath("/files"),
			        100 * 1024 * 1024,
			        "utf-8",
			        new DefaultFileRenamePolicy()
			    );
				
			    File file = multi.getFile("cover_img");
			    
			    String title = multi.getParameter("title");
			    String author = multi.getParameter("author");
			    String publisher = multi.getParameter("publisher");
			    String cover_img = file.getName();
			    
			    BookBean book = new BookBean();
			    book.setTitle(title);
			    book.setAuthor(author);
			    book.setPublisher(publisher);
			    book.setCover_img(cover_img);
			    
			    request.setAttribute("book", book);
			    request.getRequestDispatcher("result.jsp").forward(request, response);
	}

}
