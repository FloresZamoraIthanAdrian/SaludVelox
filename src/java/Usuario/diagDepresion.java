package Usuario;

import Control.AccionesEnfermedad;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class diagDepresion extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int id_usu, resp1, resp2, resp3, resp4, resp5, resp6, resp7, resp8, resp9;
            
            int id_enfermedad = Integer.parseInt(request.getParameter("id_transtorno"));
                    
            String fecha;
            fecha = request.getParameter("fechaActual");
            
            id_usu = Integer.parseInt(request.getParameter("id_usu"));
            resp1 = Integer.parseInt(request.getParameter("respuesta"));
            resp2 = Integer.parseInt(request.getParameter("respuesta1"));
            resp3 = Integer.parseInt(request.getParameter("respuesta2"));
            resp4 = Integer.parseInt(request.getParameter("respuesta3"));
            resp5 = Integer.parseInt(request.getParameter("respuesta4"));
            resp6 = Integer.parseInt(request.getParameter("respuesta5"));
            resp7 = Integer.parseInt(request.getParameter("respuesta6"));
            resp8 = Integer.parseInt(request.getParameter("respuesta7"));
            resp9 = Integer.parseInt(request.getParameter("respuesta8"));
            
            int total = resp1 + resp2 + resp3 + resp4 + resp5 + resp6 + resp7 + resp8 +  resp9;
            
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
