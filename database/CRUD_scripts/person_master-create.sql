CREATE TABLE person_master (
    person_uuid UUID PRIMARY KEY,
    name_first VARCHAR(50) NOT NULL,
    name_middle VARCHAR(50),
    name_last VARCHAR(50) NOT NULL,
    name_suffix VARCHAR(10),
    name_pref  VARCHAR(50),
    date_of_birth DATE,
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);