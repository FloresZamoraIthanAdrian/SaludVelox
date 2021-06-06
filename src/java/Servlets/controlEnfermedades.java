package Servlets;

import Control.AccionesEnfermedad;
import Usuario.Enfermedad;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class controlEnfermedades extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int id_usu, depresion, ansiedad, tc_alimentaria, t_conducta, tda_tdah;
            int dislexia, autismo, bipolaridad, asperger, t_obesesivo, estres;
            
            id_usu = Integer.parseInt(request.getParameter("id_usu"));
            depresion = Integer.parseInt(request.getParameter("depresion"));
            ansiedad = Integer.parseInt(request.getParameter("ansiedad"));
            tc_alimentaria = Integer.parseInt(request.getParameter("tc_alimen"));
            t_conducta = Integer.parseInt(request.getParameter("t_conducta"));
            tda_tdah = Integer.parseInt(request.getParameter("tda_tdah"));
            dislexia = Integer.parseInt(request.getParameter("dislexia"));
            autismo = Integer.parseInt(request.getParameter("autismo"));
            bipolaridad = Integer.parseInt(request.getParameter("bipolaridad"));
            asperger = Integer.parseInt(request.getParameter("asperger"));
            t_obesesivo = Integer.parseInt(request.getParameter("t_obsesivo_compulsivo"));
            estres = Integer.parseInt(request.getParameter("estres"));
            
            Enfermedad enf = new Enfermedad();
            enf.setId_enfermedad(id_usu);
            enf.setDepresion(depresion);
            enf.setAnsiedad(ansiedad);
            enf.setTc_alimentaria(tc_alimentaria);
            enf.setT_conducta(t_conducta);
            enf.setTda_tdah(tda_tdah);
            enf.setDislexia(dislexia);
            enf.setAutismo(autismo);
            enf.setBipolaridad(bipolaridad);
            enf.setAsperger(asperger);
            enf.setT_obsesivo_compulsivo(t_obesesivo);
            enf.setEstres(estres);
            
            System.out.println(enf.getId_enfermedad());
            
            int state = AccionesEnfermedad.controlEnfermedades(enf);
            
            if(state > 0){
                response.sendRedirect("Resultado.jsp");
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
