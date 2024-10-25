-- Create customer service event table
CREATE TABLE silver.cust_service_event (
    event_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contact_id UUID REFERENCES silver.contact_master(contact_id),
    event_type VARCHAR(50) NOT NULL,
    event_priority VARCHAR(20),
    event_status VARCHAR(20) NOT NULL,
    event_category VARCHAR(50),
    event_subcategory VARCHAR(50),
    description TEXT,
    resolution_desc TEXT,
    assigned_to UUID,  -- References employee table
    reported_by UUID,  -- References person table
    reported_ts TIMESTAMP WITH TIME ZONE NOT NULL,
    resolved_ts TIMESTAMP WITH TIME ZONE,
    resolution_sla_ts TIMESTAMP WITH TIME ZONE,
    response_sla_ts TIMESTAMP WITH TIME ZONE,
    satisfaction_score SMALLINT,
    feedback_comments TEXT,
    is_escalated BOOLEAN DEFAULT false,
    escalation_reason TEXT,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_ts TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR(100)
);