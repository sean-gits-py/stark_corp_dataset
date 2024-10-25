-- Create location_status reference table
CREATE TABLE silver.location_status (
    status_id SMALLINT PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL,
    status_desc VARCHAR(255),
    is_active BOOLEAN DEFAULT true,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);