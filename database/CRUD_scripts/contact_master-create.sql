-- Create contact_master table
CREATE TABLE silver.contact_master (
    contact_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    person_uuid UUID,  -- References person table from the data
    org_uuid UUID,     -- References org table from the data
    primary_email VARCHAR(255),
    secondary_email VARCHAR(255),
    business_phone VARCHAR(20),
    mobile_phone VARCHAR(20),
    fax_number VARCHAR(20),
    primary_addr_id UUID REFERENCES silver.address_master(addr_id),
    shipping_addr_id UUID REFERENCES silver.address_master(addr_id),
    billing_addr_id UUID REFERENCES silver.address_master(addr_id),
    preferred_contact_method VARCHAR(50),
    contact_status VARCHAR(20) DEFAULT 'Active',
    is_active BOOLEAN DEFAULT true,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);