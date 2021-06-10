package Servlets;

import Control.AccionesEnfermedad;
import Usuario.Enfermedad;
import Usuario.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class diagDislexia extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int id_usu, resp1, resp2, resp3, resp4, resp5, resp6, resp7, resp8, resp9;
            int id_enfermedad = Integer.parseInt(request.getParameter("id_transtorno"));
                    
            String fecha;
            fecha = request.getParameter("fechaActual");
            
            id_usu = Integer.parseInt(request.getParameter("id_usu"));
            resp1 = Integer.parseInt(request.getParameter("respuesta49"));
            resp2 = Integer.parseInt(request.getParameter("respuesta50"));
            resp3 = Integer.parseInt(request.getParameter("respuesta51"));
            resp4 = Integer.parseInt(request.getParameter("respuesta52"));
            resp5 = Integer.parseInt(request.getParameter("respuesta53"));
            resp6 = Integer.parseInt(request.getParameter("respuesta54"));
            resp7 = Integer.parseInt(request.getParameter("respuesta55"));
            resp8 = Integer.parseInt(request.getParameter("respuesta56"));
            
            int total = resp1 + resp2 + resp3 + resp4 + resp5 + resp6 + resp7 + resp8;
            
            Usuario u = new Usuario();
            Enfermedad end = new Enfermedad();
            
            u.setId(id_usu);
            end.setId_enfermedad(id_enfermedad);
            end.setPuntaje(total);
            end.setFecha(fecha);
            
            int state = AccionesEnfermedad.controlEnfermedad(end, u);
            
            if(state > 0){
                response.sendRedirect("Formulario.jsp");
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
