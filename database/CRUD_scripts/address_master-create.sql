-- Create address_master table
CREATE TABLE silver.address_master (
    addr_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    addr_type_id SMALLINT REFERENCES silver.address_type(addr_type_id),
    addr_line_1 VARCHAR(100) NOT NULL,
    addr_line_2 VARCHAR(100),
    city VARCHAR(50) NOT NULL,
    state_province VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50) NOT NULL,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    is_verified BOOLEAN DEFAULT false,
    is_active BOOLEAN DEFAULT true,
    verification_date DATE,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);