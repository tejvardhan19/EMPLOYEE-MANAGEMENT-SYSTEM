package com.servlet;

import com.model.ProjectAssignmentDAO;
import com.entity.ProjectAssignment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addProjectAssignment")
public class ProjectAssignmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectAssignmentDAO paDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        paDAO = new ProjectAssignmentDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String projectId = request.getParameter("projectId");
        String projectName = request.getParameter("projectName");
        String employeeId = request.getParameter("employeeId");

        // Create ProjectAssignment object
        ProjectAssignment pa = new ProjectAssignment();
        pa.setProjectId(Integer.parseInt(projectId));
        pa.setProjectName(projectName);
        pa.setEmployeeId(Integer.parseInt(employeeId));

        // Persist ProjectAssignment
        paDAO.addProjectAssignment(pa);

        // Redirect or forward to a success page
        response.sendRedirect("confirmation.jsp");
    }
}
