CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    department_id INT NOT NULL,
    CONSTRAINT fk_project_department FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE CASCADE
);