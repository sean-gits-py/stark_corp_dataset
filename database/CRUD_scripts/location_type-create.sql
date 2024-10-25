-- Create location_type reference table
CREATE TABLE silver.location_type (
    loc_type_id SMALLINT PRIMARY KEY,
    loc_type_name VARCHAR(50) NOT NULL,
    loc_type_desc VARCHAR(255),
    is_active BOOLEAN DEFAULT true,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);