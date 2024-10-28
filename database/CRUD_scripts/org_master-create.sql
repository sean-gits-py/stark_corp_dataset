CREATE TABLE org_master (
    org_uuid UUID PRIMARY KEY,
    org_name VARCHAR(100) NOT NULL,
    org_name_full VARCHAR(150) NOT NULL,
    org_type_id INTEGER REFERENCES org_type(org_type_id),
    org_status_id INTEGER REFERENCES org_status(org_status_id),
    parent_org_uuid UUID REFERENCES org_master(org_uuid),
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);