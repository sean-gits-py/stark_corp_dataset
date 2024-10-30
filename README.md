# Stark Industries Enterprise Datasets & Database

Fictional Stark Industries datasets for database and programming projects.

* [Stark Ind Silver Data Model](https://dbdiagram.io/d/enterprise-data-model-65fda536ae072629ceba2dbb) to see the current data model draft on dbdiagram.io

### PostgreSQL Database Schema & Table info:

| Content          | Database Scripts                                                                                      | Dataset & Data Dictionary                                                                            | General Description |
|------------------|-------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|---------------------|
| `Organization`   | [org_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)      | [Org](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/organizations)           | Org data table using UUIDs as well as 'status' 'type' tables to differentiate between Stark Industries subsidiary companies and external orgs. Includes SQL trigger to track 'org_master' table changes. |
| `Account`        | [account_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)  | [Account](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/accounts)            | Account data table with UUIDs as well as 'account_status' & 'account_type' tables. Includes SQL trigger to track 'account_master' row updates via the 'account_hist' table. |
| `Product`        | [product_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)  | [Product](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/products)            | Product data table with UUIDs as well as 'product_status' & 'product_type' tables. Includes SQL trigger to track product_master data changes. |
| `Person`         | [person_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)   | [Person](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/persons)              | Person data table uses UUIDs and links to the 'contact_master' data table where org, account, and location relationship information can be accessed. |
| `Employee`       | [employee_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts) | [Employee](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/persons)            | Employee data table uses UUIDs and links to the 'person_master' data table where org, account, and person relationship information can be accessed. |
| `User`           | [user_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)     | User (In progress)                                                                                   | User data table links to the 'contact_master' data table where user is keyed to org, account, and person relationship information. |
| `Contact`        | [contact_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)  | Contact (In progress)                                                                                | Contact data table with UUIDs as well as 'status' 'type' tables. Includes SQL trigger to track account table changes. |
| `Order`          | [order](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)           | [Order](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/order)                 | Order data table with UUIDs as well as 'order_status' & 'order_type' tables. Includes SQL trigger to track 'order' row-level table updates. |
| `Order Details`  | [order_details](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)   | [Order Details](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/order_details) | Order Details table keyed to order table. Includes SQL trigger to track 'order_details' table changes. |
| `Location`       | [location_master](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts) | [Location](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/datasets/location)           | Location data table uses UUIDs and links to the 'address_master' data table where location and address relationship information can be accessed. |
| `Price`          | [price](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)           | Price (In progress)                                                                                  | Pricing data table including SQL trigger to track product pricing updates and changes. |
| `Price History`  | [price_hist](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)      | Price history (In progress)                                                                          | Price History data table with SQL trigger to track historical updates to product prices. |
| `Logistics`      | [logistics](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)       | Logistics & shipping information (In progress)                                                       | Shipping & order fulfillment data table. |
| `Settlement`     | [settlement](https://github.com/sean-gits-py/stark_corp_dataset/tree/main/database/CRUD_scripts)      | Settlement & transaction information (In progress)                                                   | Transaction settlement data table. |



### Database Tables are modeled on a Medallion Architecture hypothetical 'Silver' Layer:

![Databricks Medallion Architecture](https://docs.databricks.com/en/_images/medallion-architecture.png)
