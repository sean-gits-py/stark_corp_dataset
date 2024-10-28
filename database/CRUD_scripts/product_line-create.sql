-- Create product_line table
CREATE TABLE IF NOT EXISTS product_line (
    product_line_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    sku_id INTEGER NOT NULL,
    line_name VARCHAR(255),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES product(product_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_sku
        FOREIGN KEY (sku_id)
        REFERENCES sku(sku_id)
        ON DELETE CASCADE
);