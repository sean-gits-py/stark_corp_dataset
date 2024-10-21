CREATE TABLE org_master (
    org_id SERIAL PRIMARY KEY,
    org_name VARCHAR(100) NOT NULL,
    org_type_id INTEGER REFERENCES org_type_desc(org_type_id),
    org_status_id INTEGER REFERENCES org_status_desc(org_status_id),
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);