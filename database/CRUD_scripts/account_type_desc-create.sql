CREATE TABLE account_type_desc (
    account_type_id SERIAL PRIMARY KEY,
    account_type_name VARCHAR(50) NOT NULL,
    account_type_description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);