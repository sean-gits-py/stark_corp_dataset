# Data Dictionary for Marvel Cinematic Universe Products

This data dictionary provides descriptions and details for each field used in the product dataset from the Marvel Cinematic Universe.

| Field Name          | Data Type | Description                                                                                     |
|---------------------|-----------|-------------------------------------------------------------------------------------------------|
| `product_uuid`      | CHAR(36)  | Unique identifier for each product, serving as the primary key.                                 |
| `product_name`      | String    | The official name of the product.                                                               |
| `manufacturer_id`   | Integer   | Numeric identifier for the manufacturer of the product, acting as a foreign key.                |
| `manufacturer_name` | String    | The name of the manufacturer of the product, acting as a foreign key.                           |
| `brand_id`          | Integer   | Numeric identifier for the brand of the product, acting as a foreign key.                       |
| `brand_name`        | String    | The brand name under which the product is marketed, acting as a foreign key.                    |
| `product_model`     | String    | Model designation or version of the product.                                                    |
| `subcategory_id`    | Integer   | Numeric identifier representing the subcategory to which the product belongs.                   |

## Field Values

### `manufacturer_id` and `manufacturer_name`
- **1**: Stark Industries
- **2**: Parker Industries


### `brand_id` and `brand_name`
- **101**: Stark Tech
- **105**: Stark Tech

### `subcategory_id`
- **1**: TBD

