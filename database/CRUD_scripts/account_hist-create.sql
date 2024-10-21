CREATE TABLE account_history (
    history_id SERIAL PRIMARY KEY,
    account_id INTEGER REFERENCES account_master(account_id),
    field_name VARCHAR(50) NOT NULL,
    original_value TEXT,
    new_value TEXT,
    changed_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    changed_by VARCHAR(50) DEFAULT CURRENT_USER
);