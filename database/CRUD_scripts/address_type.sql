-- Create address_type reference table
CREATE TABLE silver.address_type (
    addr_type_id SMALLINT PRIMARY KEY,
    addr_type_name VARCHAR(50) NOT NULL,
    addr_type_desc VARCHAR(255),
    is_active BOOLEAN DEFAULT true,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);