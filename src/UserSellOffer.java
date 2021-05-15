

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
 * Servlet implementation class UserSellOffer
 */
@WebServlet("/UserSellOffer")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
				maxFileSize = 1024 * 1024 * 10, 
				maxRequestSize = 1024 * 1024 * 50)

public class UserSellOffer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public static final String UPLOAD_DIR = "assets";
    public String dbFileName = "";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String cusid = request.getParameter("cusid");
		String sbookname = request.getParameter("sbookname");
		String sbookauthor = request.getParameter("sbookauthor");
		String sbookpublisher = request.getParameter("sbookpublisher");
		String sbookgenre = request.getParameter("sbookgenre");
		String sbooksubject = request.getParameter("sbooksubject");
		String sbookisbn = request.getParameter("sbookisbn");
		String sbookprice = request.getParameter("sbookprice");
		
		Part part = request.getPart("sbookimage");
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
			PreparedStatement ps = con.prepareStatement("insert into sellrequest(CustID,SellBookName,SBookAuthor,SBookPublisher,SBookGenre,SBookSubject,SBookISBN,SBookPrice,SBookImage,SellPath,SellStatus) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, cusid);
			ps.setString(2, sbookname);
			ps.setString(3, sbookauthor);
			ps.setString(4, sbookpublisher);
			ps.setString(5, sbookgenre);
			ps.setString(6, sbooksubject);
			ps.setString(7, sbookisbn);
			ps.setString(8, sbookprice);
			ps.setString(9, fileName);
			ps.setString(10, savePath);
			ps.setString(11, "Pending");
			ps.executeUpdate();
			System.out.println("Offer pending");
			response.sendRedirect("sellingrequest.jsp");
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
