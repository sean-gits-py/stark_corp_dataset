# Data Dictionary for Marvel Cinematic Universe (MCU) Organizations

This data dictionary provides descriptions and details for each field used in the organization dataset from the Marvel Cinematic Universe.

| Field Name         | Data Type | Description                                                                                           |
|--------------------|-----------|-------------------------------------------------------------------------------------------------------|
| `org_uuid`         | UUID      | Unique identifier for each organization, serving as the primary key.                                  |
| `org_name_full`    | String    | The official, full name of the organization.                                                          |
| `org_name_short`   | String    | The "Doing Business As" (DBA) name or short name of the organization, if applicable.                  |
| `org_type_id`      | Integer   | Numeric identifier representing the type of the organization.                                         |
| `org_type_desc`    | String    | Description of the organization's type (e.g., Business, Government, Military, Nonprofit, etc.).       |
| `org_status_id`    | Integer   | Numeric identifier representing the current status of the organization.                               |
| `org_status_desc`  | String    | Description of the organization's status (e.g., Active, Acquired, Inactive, Defunct).                 |
| `corp_acct_uuid`   | UUID      | Unique identifier for the corporate account associated with the organization.                        |
| `parent_org_uuid`  | UUID      | Unique identifier for the parent organization, if applicable. If there is no parent, this field is blank. |
| `parent_org_name`  | String    | Name of the parent organization, if applicable. If there is no parent, this field is blank.           |

## Field Values

### `org_type_id` and `org_type_desc`
- **1**: Government
- **2**: Military
- **3**: Nonprofit
- **4**: Educational Institution
- **5**: Research Institution
- **6**: Business

### `org_status_id` and `org_status_desc`
- **1**: Active
- **2**: Acquired
- **3**: Inactive
- **4**: Defunct
