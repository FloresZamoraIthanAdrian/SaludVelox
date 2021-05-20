package Servlets;

import Control.AccionesUsuario;
import Usuario.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CrearCuenta extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int id, semestre, edad, num_reportes;
            String nombre, appat, apmat, correo, genero, nom_usu, pass_usu;
            
            nombre = request.getParameter("Nombre");
            appat = request.getParameter("appat");
            apmat = request.getParameter("apmat");
            correo = request.getParameter("CorreoElectrónico");
            genero = request.getParameter("genero");
            nom_usu = request.getParameter("Usuario");
            pass_usu = request.getParameter("VerificarContrasena");
            edad = Integer.parseInt(request.getParameter("edad"));
            semestre = Integer.parseInt(request.getParameter("semestre"));
            
            Usuario u = new Usuario();
            
            u.setNombre(nombre);
            u.setAppat(appat);
            u.setApmat(apmat);
            u.setCorreo(correo);
            u.setGenero(genero);
            u.setNom_usu(nom_usu);
            u.setPass_usu(pass_usu);
            u.setEdad(edad);
            u.setSemestre(semestre);
            
            int state = AccionesUsuario.registrarUsuario(u);
            
            if(state > 0){
                response.sendRedirect("IniciarSesion.html");
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
