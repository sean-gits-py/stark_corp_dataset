CREATE TABLE silver.location (
    location_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    location_name VARCHAR(100) NOT NULL,
    location_code VARCHAR(50),
    org_uuid UUID NOT NULL,  -- References org table
    addr_id UUID NOT NULL REFERENCES silver.address_master(addr_id),
    loc_type_id SMALLINT NOT NULL REFERENCES silver.location_type(loc_type_id),
    status_id SMALLINT NOT NULL REFERENCES silver.location_status(status_id),
    parent_location_id UUID REFERENCES silver.location(location_id),
    square_footage INTEGER,
    max_occupancy INTEGER,
    time_zone VARCHAR(50),
    opening_date DATE,
    closing_date DATE,
    is_active BOOLEAN DEFAULT true,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);

-- Create indexes for better query performance
CREATE INDEX idx_location_org ON silver.location(org_uuid);
CREATE INDEX idx_location_type ON silver.location(loc_type_id);
CREATE INDEX idx_location_status ON silver.location(status_id);
CREATE INDEX idx_location_parent ON silver.location(parent_location_id);
CREATE INDEX idx_location_code ON silver.location(location_code);

-- Insert basic location status values
INSERT INTO silver.location_status (status_id, status_name, status_desc) VALUES
(1, 'Active', 'Location is currently active and operational'),
(2, 'Under Construction', 'Location is being built or renovated'),
(3, 'Temporarily Closed', 'Location is temporarily closed for maintenance or other reasons'),
(4, 'Permanently Closed', 'Location has been permanently closed'),
(5, 'Planned', 'Location is in planning phase'),
(6, 'Decomissioned', 'Location has been decomissioned');

-- Insert basic location types based on Stark Industries context
INSERT INTO silver.location_type (loc_type_id, loc_type_name, loc_type_desc) VALUES
(1, 'Headquarters', 'Main corporate headquarters location'),
(2, 'Research Facility', 'Research and development facility'),
(3, 'Manufacturing Plant', 'Manufacturing and production facility'),
(4, 'Distribution Center', 'Warehouse and distribution facility'),
(5, 'Office Building', 'Corporate office location'),
(6, 'Testing Facility', 'Product testing and validation facility'),
(7, 'Training Center', 'Employee training and development facility'),
(8, 'Data Center', 'IT and data processing facility'),
(9, 'Laboratory', 'Scientific research laboratory'),
(10, 'Storage Facility', 'Secure storage facility'),
(11, 'Retail Location', 'Customer-facing retail location'),
(12, 'Service Center', 'Customer service and support center'),
(13, 'Hangar', 'Aircraft storage and maintenance facility'),
(14, 'Power Plant', 'Energy generation facility'),
(15, 'Security Complex', 'Security and defense facility');