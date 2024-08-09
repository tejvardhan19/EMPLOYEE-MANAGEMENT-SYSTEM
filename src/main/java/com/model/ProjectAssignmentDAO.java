package com.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import com.entity.ProjectAssignment;

public class ProjectAssignmentDAO {
    private EntityManager em;

    public ProjectAssignmentDAO() {
        this.em = Persistence.createEntityManagerFactory("your-persistence-unit").createEntityManager();
    }

    public void addProjectAssignment(ProjectAssignment pa) {
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.persist(pa);
            transaction.commit();
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

	public List<ProjectAssignment> getProjectAssignmentsByEmployee(int employeeId) {
		// TODO Auto-generated method stub
		return null;
	}

    // Add other methods as needed
}
