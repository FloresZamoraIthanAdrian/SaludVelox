package Servlets;

import Control.AccionesUsuario;
import Usuario.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CambiarContrasena extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession sesion = request.getSession();
            int id = (int) sesion.getAttribute("id_usuS");
            System.out.println(id);
            
            String correo, pass, oldPass;
            
            correo = request.getParameter("correoRec");
            oldPass = request.getParameter("antiguaContrasena");
            pass = request.getParameter("nuevaContrasena");
            
            Usuario u = new Usuario();
            
            u.setId(id);
            u.setCorreo(correo);
            u.setPass_usu(oldPass);
            u.setPass_usu_c(pass);
            
            int state = AccionesUsuario.cambiarContrasena(u);
            
            if(state > 0){
                response.sendRedirect("Cuenta.jsp");
            }else{
                out.print("<script>alert('La antigua contraseña es incorrecta');</script>");
                response.sendRedirect("Olvidar.jsp");
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
