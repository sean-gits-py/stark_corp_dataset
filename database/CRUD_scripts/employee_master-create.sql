CREATE TABLE employee_master (
    emp_id SERIAL PRIMARY KEY,
    person_id INTEGER REFERENCES person_master(person_id),
    org_id INTEGER REFERENCES org_master(org_id),
    emp_number VARCHAR(20) UNIQUE,
    job_title VARCHAR(100),
    corp_dept_id INTEGER REFERENCES corp_dept_master(department_id),
    emp_type_id INTEGER REFERENCES emp_type_desc(emp_type_id),
    emp_status_id INTEGER REFERENCES emp_status_desc(emp_status_id),
    emp_start_date DATE,
    emp_end_date DATE,
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);