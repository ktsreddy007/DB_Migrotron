CREATE TABLE employee_projects (
    employee_id INT NOT NULL,
    project_id INT NOT NULL,
    assigned_on DATE NOT NULL,
    role VARCHAR(50) NOT NULL,
    PRIMARY KEY (employee_id, project_id),
    CONSTRAINT fk_ep_employee FOREIGN KEY (employee_id) REFERENCES employees(employee_id) ON DELETE CASCADE,
    CONSTRAINT fk_ep_project FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE
);