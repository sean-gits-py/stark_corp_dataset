# Data Dictionary for Stark Industries Employee Dimension Table

This data dictionary provides descriptions and details for each field used in the Stark Industries employee dimension table.

| Field Name              | Data Type | Description                                                                                     |
|-------------------------|-----------|-------------------------------------------------------------------------------------------------|
| `employee_id`           | Integer   | Primary key, uniquely identifies each employee within the table.                                |
| `person_id`             | Integer   | Foreign key, references the person's ID from the person table.                                  |
| `first_name`            | String    | Employee's first name, referenced from the person table.                                        |
| `last_name`             | String    | Employee's last name, referenced from the person table.                                         |
| `contact_id`            | Integer   | Foreign key, references the contact ID from the contact table.                                  |
| `dept_id`               | Integer   | Foreign key, references the department ID from the corp_dept table.                             |
| `position`              | String    | The job title or role of the employee within Stark Industries.                                  |
| `employment_start_date` | Date      | The date the employee began their employment at Stark Industries.                               |
| `employment_end_date`   | Date      | The date the employee ended their employment at Stark Industries, if applicable.                |
| `created_at`            | DateTime  | Timestamp indicating when the employee record was created in the system.                        |
| `updated_at`            | DateTime  | Timestamp indicating when the employee record was last updated in the system.                   |

## Field Descriptions

- **`employee_id`**: A unique identifier assigned to each employee in the dimension table. It is used to link employees to other relevant data points within the database.

- **`person_id`**: This identifier links the employee to their detailed personal information stored in the person table. It allows for easy cross-reference and ensures consistency of personal data across tables.

- **`first_name`** and **`last_name`**: These fields store the employee's first and last names, providing easy identification and reference.

- **`contact_id`**: This identifier links the employee to their contact details stored in the contact table, which may include phone numbers, email addresses, and other contact information.

- **`dept_id`**: This field associates the employee with a specific department within Stark Industries, using a reference to the corp_dept table. It helps in understanding the organizational structure and department-specific roles.

- **`position`**: The job title or role of the employee within Stark Industries, such as CEO, Scientist, Engineer, etc. It describes the employee's responsibilities and functional area.

- **`employment_start_date`**: The date the employee started their role at Stark Industries. It is important for tracking tenure and employment history.

- **`employment_end_date`**: If applicable, this field indicates the date the employee left Stark Industries. It helps track the duration of employment and identify current versus former employees.

- **`created_at`**: A timestamp indicating when the employee record was originally created in the database. It helps track data entry and updates over time.

- **`updated_at`**: A timestamp indicating the most recent update to the employee record. It ensures data accuracy and tracks changes made to employee information.

