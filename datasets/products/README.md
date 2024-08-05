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
- **2**: Advanced Idea Mechanics
- **3**: Pym Technologies
- **4**: Parker Industries
- **5**: Wakandan Royal Family
- **6**: HYDRA
- **7**: S.H.I.E.L.D.
- **8**: Nova Corps
- **9**: Collectors
- **10**: Masters of the Mystic Arts
- **11**: Thanos
- **12**: Kree Empire

### `brand_id` and `brand_name`
- **101**: Stark Tech
- **102**: War Machine
- **103**: AIM BioTech
- **104**: Pym Tech
- **105**: Stark Tech
- **106**: Wakandan Tech
- **107**: HYDRA Tech
- **108**: Nova Tech
- **109**: Collectors Tech
- **110**: Mystic Tech
- **111**: Thanos Tech
- **112**: S.H.I.E.L.D. Tech
- **113**: Kree Tech

### `subcategory_id`
- **1**: Suit
- **2**: Armor
- **3**: Reactor
- **4**: AI System
- **5**: Serum
- **6**: Particle
- **7**: Weapon
- **8**: Enhancement
- **9**: Scepter
- **10**: Cube
- **11**: Infinity Stone
- **12**: Gauntlet
- **13**: Robot
- **14**: Aircraft
- **15**: Shooter
- **16**: Blaster
- **17**: Tunnel
- **18**: Twister

