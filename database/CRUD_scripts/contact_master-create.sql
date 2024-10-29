-- Create contact_master table
CREATE TABLE silver.contact_master (
    contact_uuid UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    person_uuid UUID,  -- References person table from the data
    account_uuid UUID,     -- References account table from the data
    email_primary VARCHAR(255),
    email_secondary VARCHAR(255),
    phone_primary VARCHAR(20),
    phone_secondary VARCHAR(20),
    fax_number VARCHAR(20),
    preferred_contact_method VARCHAR(50),
    contact_status_id VARCHAR(20) DEFAULT 'Active',
    is_active BOOLEAN DEFAULT true,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);