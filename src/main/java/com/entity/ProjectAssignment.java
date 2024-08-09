package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "projectassignment")
public class ProjectAssignment {
    @Id
    private int projectId;
    private String projectName;
    private int employeeid;

    // Getters and Setters
    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public int getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeid = employeeid;
    }
}
