-- Create a view for location details
CREATE OR REPLACE VIEW silver.v_location_details AS
SELECT
    l.location_id,
    l.location_name,
    l.location_code,
    lt.loc_type_name,
    ls.status_name,
    a.addr_line_1,
    a.addr_line_2,
    a.city,
    a.state_province,
    a.postal_code,
    a.country,
    pl.location_name as parent_location_name,
    l.square_footage,
    l.max_occupancy,
    l.time_zone,
    l.opening_date,
    l.closing_date,
    l.is_active
FROM silver.location l
JOIN silver.location_type lt ON l.loc_type_id = lt.loc_type_id
JOIN silver.location_status ls ON l.status_id = ls.status_id
JOIN silver.address_master a ON l.addr_id = a.addr_id
LEFT JOIN silver.location pl ON l.parent_location_id = pl.location_id;