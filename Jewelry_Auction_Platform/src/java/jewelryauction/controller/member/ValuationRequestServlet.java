/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package jewelryauction.controller.member;

import dao.UserDAOImpl;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author User
 */
@WebServlet(name = "ValuationRequestServlet", urlPatterns = {"/process"})
public class ValuationRequestServlet extends HttpServlet {

    private static final String ERROR_PAGE = "index.htm";
    private static final String HOME_PAGE = "/valuation";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String url = ERROR_PAGE;
            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            StringBuilder photos = new StringBuilder();
            try {
                if (!isMultipart) {
                } else {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    List items = null;
                    try {
                        items = upload.parseRequest(request);
                    } catch (FileUploadException e) {
                        e.printStackTrace();
                    }
                    Iterator iter = items.iterator();
                    Hashtable params = new Hashtable();
                    String fileName = null;
                    while (iter.hasNext()) {
                        FileItem item = (FileItem) iter.next();
                        if (item.isFormField()) {
                            params.put(item.getFieldName(), item.getString());
                        } else {
                            try {
                                String itemName = item.getName();
                                fileName = itemName.substring(itemName.lastIndexOf("\\") + 1);
                                File imageDir = new File(getServletContext().getRealPath("/") + "images");
                                
                                if (!imageDir.exists()) {
                                    imageDir.mkdirs();
                                }
                                String RealPath = "E:/Project/SWP391_Team6_Jewelry_Auction_System/Jewelry_Auction_Platform/web/images/" + fileName;
                                //E:/Project/SWP391_Team6_Jewelry_Auction_System-main/Jewelry_Auction_Platform/web/images/
                                File savedFile = new File(RealPath);
                                photos.append("images/").append(fileName).append(";");
                                item.write(savedFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }//end while
                    //get Parameter
                    HttpSession session = request.getSession();
                    String name = (String) params.get("name");
                    String email = (String) params.get("email");
                    String phone = (String) params.get("phone");
                    String communication = (String) params.get("communication");
                    String description = (String) params.get("description");
                    String username = (String) session.getAttribute("USERNAME");
                    UserDAOImpl dao = new UserDAOImpl();
                    try {
                        boolean result;
                        if (username != null) {
                            result = dao.insertValuationRequest(name, email, phone, communication, photos.toString(), description, username);
                        } else {
                            result = dao.insertValuationRequest(name, email, phone, communication, photos.toString(), description, "Guest");
                        }
                        if (result == true) {
                            url = HOME_PAGE;
                        } else {
                            url = ERROR_PAGE;
                        }
                    } catch (Exception ex) {
                        ex.getMessage();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                response.sendRedirect(request.getContextPath() + url);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
