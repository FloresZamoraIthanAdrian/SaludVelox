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


public class diagObsesivo extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int id_usu, resp1, resp2, resp3, resp4, resp5, resp6, resp7, resp8, resp9, resp10;
            
            id_usu = Integer.parseInt(request.getParameter("id_usu"));
            resp1 = Integer.parseInt(request.getParameter("respuesta76"));
            resp2 = Integer.parseInt(request.getParameter("respuesta77"));
            resp3 = Integer.parseInt(request.getParameter("respuesta78"));
            resp4 = Integer.parseInt(request.getParameter("respuesta79"));
            resp5 = Integer.parseInt(request.getParameter("respuesta80"));
            resp6 = Integer.parseInt(request.getParameter("respuesta81"));
            resp7 = Integer.parseInt(request.getParameter("respuesta82"));
            resp8 = Integer.parseInt(request.getParameter("respuesta83"));
            resp9 = Integer.parseInt(request.getParameter("respuesta84"));
            resp10 = Integer.parseInt(request.getParameter("respuesta85"));
            
            Usuario u = new Usuario();
            Enfermedad end = new Enfermedad();
            
            u.setId(id_usu);
            end.setResp1(resp1);
            end.setResp2(resp2);
            end.setResp3(resp3);
            end.setResp4(resp4);
            end.setResp5(resp5);
            end.setResp6(resp6);
            end.setResp7(resp7);
            end.setResp8(resp8);
            end.setResp9(resp9);
            end.setResp10(resp10);
            
            int state = AccionesEnfermedad.controlObsesivoCompulsivo(end, u);
            
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
