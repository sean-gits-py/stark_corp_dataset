CREATE TABLE account_master (
    account_id SERIAL PRIMARY KEY,
    account_name VARCHAR(100) NOT NULL,
    account_type_id INTEGER REFERENCES account_type_desc(account_type_id),
    account_status_id INTEGER REFERENCES account_status_desc(account_status_id),
    org_id INTEGER REFERENCES org_master(org_id),
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);