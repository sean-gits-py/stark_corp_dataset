# Data Dictionary for Marvel Cinematic Universe Organizations

This data dictionary provides descriptions and details for each field used in the organization dataset from the Marvel Cinematic Universe.

| Field Name      | Data Type | Description                                                                                           |
|-----------------|-----------|-------------------------------------------------------------------------------------------------------|
| `org_uuid`      | UUID      | Unique identifier for each organization, serving as the primary key.                                  |
| `org_name`      | String    | The official name of the organization.                                                                |
| `dba_name`      | String    | The "Doing Business As" name of the organization, if applicable.                                      |
| `location_id`   | Integer   | Numeric identifier for the location of the organization.                                              |
| `location_desc` | String    | Description of the organization's primary location, including city and state or region.               |
| `org_type_id`   | Integer   | Numeric identifier representing the type of the organization.                                         |
| `org_type_desc` | String    | Description of the organization's type (e.g., Corporation, LLC, Non-Profit, Government Agency, etc.). |
| `org_status_id` | Integer   | Numeric identifier representing the current status of the organization.                               |
| `org_status_desc`| String   | Description of the organization's status (e.g., Active, Acquired, Inactive, Defunct).                 |
| `corp_account_id`| Integer  | Numeric identifier for the corporate account associated with the organization.                        |

## Field Values

### `org_type_id` and `org_type_desc`
- **1**: Corporation
- **2**: Government Agency
- **3**: Terrorist Organization
- **4**: Spacefaring Group
- **5**: Spiritual Order
- **6**: Celestial Beings

### `org_status_id` and `org_status_desc`
- **1**: Active
- **2**: Acquired
- **3**: Inactive
- **4**: Defunct
