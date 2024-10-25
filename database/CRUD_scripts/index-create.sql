-- Create indexes for better query performance
CREATE INDEX idx_addr_master_type ON silver.address_master(addr_type_id);
CREATE INDEX idx_addr_master_country ON silver.address_master(country);
CREATE INDEX idx_addr_master_postal ON silver.address_master(postal_code);

CREATE INDEX idx_contact_person ON silver.contact_master(person_uuid);
CREATE INDEX idx_contact_org ON silver.contact_master(org_uuid);
CREATE INDEX idx_contact_status ON silver.contact_master(contact_status);

CREATE INDEX idx_cust_service_status ON silver.cust_service_event(event_status);
CREATE INDEX idx_cust_service_priority ON silver.cust_service_event(event_priority);
CREATE INDEX idx_cust_service_type ON silver.cust_service_event(event_type);
CREATE INDEX idx_cust_service_assigned ON silver.cust_service_event(assigned_to);
