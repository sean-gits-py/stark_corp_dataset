-- Create manufacturers table
CREATE TABLE IF NOT EXISTS manufacturers (
    mfr_uuid SERIAL PRIMARY KEY,
    org_id INTEGER NOT NULL,
    brand_id INTEGER NOT NULL,
    is_active BOOLEAN DEFAULT true,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100),
    CONSTRAINT fk_organization
        FOREIGN KEY (org_uuid)
        REFERENCES org_master(org_uuid)
        ON DELETE CASCADE,
    CONSTRAINT fk_brand
        FOREIGN KEY (brand_id)
        REFERENCES brand_master(brand_id)
        ON DELETE CASCADE
);