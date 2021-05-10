

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import project.ConnectionProvider;

/**
 * Servlet implementation class AdminAddBooks
 */
@WebServlet("/AdminAddBooks")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
				maxFileSize = 1024 * 1024 * 10, 
				maxRequestSize = 1024 * 1024 * 50)

public class AdminAddBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public static final String UPLOAD_DIR = "assets";
    public String dbFileName = "";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String bookname = request.getParameter("bookname");
		String bookauthor = request.getParameter("bookauthor");
		String bookpublisher = request.getParameter("bookpublisher");
		String bookgenre = request.getParameter("bookgenre");
		String booksubject = request.getParameter("booksubject");
		String bookisbn = request.getParameter("bookisbn");
		String bookprice = request.getParameter("bookprice");
		String bookimage = request.getParameter("bookimage");
		String bookactive = request.getParameter("bookactive");

		Part part = request.getPart("bookimage");
		String fileName = extractFileName(part);//file name

        
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        System.out.println("applicationPath:" + applicationPath);
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
        
        String savePath = uploadPath + File.separator + fileName;
        System.out.println("savePath: " + savePath);
        String sRootPath = new File(savePath).getAbsolutePath();
        System.out.println("sRootPath: " + sRootPath);
        part.write(savePath + File.separator);
        File fileSaveDir1 = new File(savePath);
        
        dbFileName = UPLOAD_DIR + File.separator + fileName;
        
        part.write(savePath + File.separator);
		
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			PreparedStatement ps = con.prepareStatement("insert into books(BookName,Author,Publisher,Genre,Subject,ISBN,BookPrice,Active,Bookimage,Path) VALUES(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, bookname);
			ps.setString(2, bookauthor);
			ps.setString(3, bookpublisher);
			ps.setString(4, bookgenre);
			ps.setString(5, booksubject);
			ps.setString(6, bookisbn);
			ps.setString(7, bookprice);
			ps.setString(8, bookactive);
			ps.setString(9, fileName);
			ps.setString(10, savePath);
			ps.executeUpdate();
			System.out.println("Add Books");
			response.sendRedirect("admindashboard.jsp");
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
	}

}
