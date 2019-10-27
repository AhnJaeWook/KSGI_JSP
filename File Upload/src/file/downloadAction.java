package file;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.tomcat.jni.File;


/**
 * Servlet implementation class downloadAction
 */
@WebServlet("/downloadAction")
public class downloadAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fileName = request.getParameter("file");
		
		String directory = this.getServletContext().getRealPath("/upload/");
		File file = new File(directory + "/" + fileName);
		
		String mimeType = getServletContext().getMimeType(file.toString());
		if(mimeType == null) {
			response.setContentType("application/octet-stream");
		}
	}
}
