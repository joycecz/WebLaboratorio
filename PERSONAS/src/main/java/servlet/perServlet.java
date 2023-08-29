package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controlador;
import logica.Persona;

/**
 *
 * @author admin
 */

@WebServlet(name = "perServlet", urlPatterns = {"/perServlet"})
public class perServlet extends HttpServlet {
    
    Controlador control =new Controlador();

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
        try (PrintWriter out = response.getWriter()) {
            
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       List<Persona>listaPer=new ArrayList<Persona>();
        
        listaPer=control.getUsuarios();
        
       
        HttpSession misession=request.getSession();
        misession.setAttribute("listaPer", listaPer);
        System.out.println("usuarios: "+listaPer.get(0));
        response.sendRedirect("verPersona.jsp");
        
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
        
                
                String nom=request.getParameter("nombre");
                String correo=request.getParameter("correo");
                String tel=request.getParameter("telefono");
                String foto=request.getParameter("foto");
                
             System.out.println("Usuario es "+nom);
       
       control.crearUsuario(nom, correo, tel, foto);
       response.sendRedirect("perServlet");
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
