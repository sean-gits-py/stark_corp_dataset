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

-- Insert basic address types
INSERT INTO silver.address_type (addr_type_id, addr_type_name, addr_type_desc) VALUES
(1, 'Primary', 'Primary address for the contact'),
(2, 'Shipping', 'Shipping address for deliveries'),
(3, 'Billing', 'Billing address for invoices'),
(4, 'Business', 'Business location address'),
(5, 'Residential', 'Residential address');