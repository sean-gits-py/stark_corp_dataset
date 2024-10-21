CREATE TABLE product_master (
    prod_id SERIAL PRIMARY KEY,
    prod_name VARCHAR(100) NOT NULL,
    prod_description TEXT,
    prod_code VARCHAR(50) UNIQUE,
    prod_cat_id INTEGER REFERENCES product_category_desc(product_category_id),
    prod_type_id INTEGER REFERENCES product_type_desc(product_type_id),
    prod_status_id INTEGER REFERENCES product_status_desc(product_status_id),
    brand_id INTEGER REFERENCES brand_master(brand_id),
    org_id INTEGER REFERENCES org_master(org_id),
    updated_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT CURRENT_USER,
    created_ts TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50) DEFAULT CURRENT_USER
);