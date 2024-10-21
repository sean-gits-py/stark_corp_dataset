CREATE TABLE brand_master (
  brand_id SERIAL PRIMARY KEY,
  brand_name VARCHAR(100) NOT NULL,
  org_id INTEGER REFERENCES org_master(organization_id),
  --brand_type_id INTEGER REFERENCES brand_type_desc(brand_type_id), --should be refactored to align with industry, perhaps NAICS or SIC code.
  current_status_id INTEGER REFERENCES brand_status_desc(brand_status_id),
  updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_by VARCHAR(50) DEFAULT CURRENT_USER,
  created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  created_by VARCHAR(50) DEFAULT CURRENT_USER
);