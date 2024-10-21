CREATE TABLE employee_status_desc (
    emp_status_id SERIAL PRIMARY KEY,
    emp_status_name VARCHAR(50) NOT NULL,
    emp_status_desc TEXT,
    --is_active BOOLEAN DEFAULT TRUE,
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);