CREATE TABLE org_hist (
    history_id SERIAL PRIMARY KEY,
    org_id INTEGER REFERENCES org_master(org_id),
    field_name VARCHAR(50) NOT NULL,
    original_value TEXT,
    new_value TEXT,
    changed_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    changed_by VARCHAR(50) DEFAULT CURRENT_USER
);