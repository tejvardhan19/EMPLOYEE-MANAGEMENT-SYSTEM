package com.servlet;

import com.model.ProjectAssignmentDAO;


import com.entity.ProjectAssignment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/employeeProjectHistory")
public class EmployeeProjectHistoryServlet extends HttpServlet {

    private ProjectAssignmentDAO paDAO = new ProjectAssignmentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int employeeId = (int) session.getAttribute("employeeId");

        List<com.entity.ProjectAssignment> projectAssignments = paDAO.getProjectAssignmentsByEmployee(employeeId);

        request.setAttribute("projectAssignments", projectAssignments);
        request.getRequestDispatcher("employeeProjectHistory.jsp").forward(request, response);
    }
}
