package Servlets;

import Control.AccionesUsuario;
import Usuario.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class editarUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int id_usuario, edad_usu, semestre_usu;
            String nom_usu, correo_usu, pass_usu, genero;
            
            id_usuario = Integer.parseInt(request.getParameter("id_usuForm"));
            edad_usu = Integer.parseInt(request.getParameter("edad"));
            semestre_usu = Integer.parseInt(request.getParameter("semestre"));
            nom_usu = request.getParameter("Usuario");
            correo_usu = request.getParameter("CorreoElectrónico");
            pass_usu = request.getParameter("passwd");
            genero = request.getParameter("genero");
            
            Usuario u = new Usuario();
            u.setId(id_usuario);
            u.setEdad(edad_usu);
            u.setSemestre(semestre_usu);
            u.setNom_usu(nom_usu);
            u.setCorreo(correo_usu);
            u.setPass_usu(pass_usu);
            u.setGenero(genero);
            
            int state = AccionesUsuario.editarDatosUsuario(u);
            
            if(state > 0){
                response.sendRedirect("Cuenta.jsp");
            }else{
                response.sendRedirect("Error404.html");
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
