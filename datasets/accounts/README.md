# Data Dictionary for MCU Account Information

This data dictionary provides descriptions and details for each field used in the MCU account dataset.

| Field Name          | Data Type | Description                                                                                      |
|---------------------|-----------|--------------------------------------------------------------------------------------------------|
| `account_id`        | Integer   | Unique identifier for each account, serving as the primary key.                                  |
| `account_name`      | String    | The official name of the account, indicating its purpose or division within the organization.     |
| `organization_id`   | UUID      | Unique identifier of the organization associated with the account, serving as a foreign key.      |
| `account_type`      | String    | Type of account, representing the nature of the business relationship (e.g., Corporate, Vendor).  |
| `account_status`    | String    | Current status of the account, indicating its operational state (e.g., Active, Inactive, Banned). |
| `primary_contact_id`| UUID      | Unique identifier of the primary contact person for the account, serving as a foreign key.        |
| `channel_id`        | Integer   | Unique identifier of the channel through which the account operates, serving as a foreign key.    |
| `created_at`        | Date      | The date when the account was created.                                                            |
| `updated_at`        | Date      | The date when the account information was last updated.                                           |

## Field Values

### `account_type`
- **Corporate**: Accounts associated with a corporate entity within the organization.
- **Vendor**: Accounts representing vendor relationships.
- **Government**: Accounts linked to government entities or agencies.
- **Spacefaring Group**: Accounts related to spacefaring organizations.
- **Monarchy**: Accounts associated with monarchical entities.
- **Research Organization**: Accounts linked to research-based entities.
- **Law Firm**: Accounts associated with legal practices.

### `account_status`
- **Active**: The account is currently operational and engaged in business activities.
- **Inactive**: The account is not currently active but may be reactivated.
- **Banned**: The account is prohibited from engaging in business activities.
- **Defunct**: The account is no longer operational and has been terminated.
