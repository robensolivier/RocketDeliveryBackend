# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# RocketDeliveryBackend

# what is SQL

- SQL (Structured Query Language) is a programming language used to manage and manipulate date stored in relational databases. SQL can be used to perform a wide range of operations on database like including, creating, modifying tables or inserting, updating and deleting data, or else querying data to retrieve specific information.

# Difference between SQLite and MySQL

- The main difference between SQLite and MySQL is that SQLite is a self-contained, serverless database management system, while MySQL is a client-server database management system.

- SQLite is an embedded database that operates within the context of the application that uses it. It does not require a separate server process or system and can be used locally within an application. It is lightweight, fast, and easy to set up and use, making it an excellent choice for small-scale applications.



- MySQL, on the other hand, is a client-server system, which means that the database is managed by a separate server process and accessed by client applications. It is a more robust database management system that can handle larger and more complex data sets, multiple users, and higher levels of concurrency

Also, SQLite is in the public domain and can be used without any restrictions, while MySQL is open-source software released under the GNU General Public License (GPL), which means that it is free to use, but may have restrictions on its use and distribution.

# What are Primary and Foreign Key?

- A primary key is a column or set of columns in a table that uniquely identifies each row of data in that table. It must have a unique value for each row and cannot contain null values. Primary keys are used to enforce data integrity and ensure that each row in a table can be uniquely identified. An example of a primary key is the "id" column in a user table. Each user has a unique id, and this id can be used to identify that user's data across other tables in the database.


id name age gender

1 John Doe 20 Male

2 Jane Doe 22 Female

3 Bob Smith 21 Male


- In this example, the "id" column is the primary key for the "students" table.

A foreign key, on the other hand, is a column or set of columns in one table that refers to the primary key in another table. It establishes a relationship between the two tables, where the foreign key in one table corresponds to the primary key in the other table. Foreign keys are used to enforce referential integrity and ensure that data in related tables is consistent. An example of a foreign key is the "user_id" column in a comments table. This column refers to the primary key of the user table, and each comment is associated with a specific user through this foreign key relationship.

id name credit_hours student_id

1 Math101     3 1

2 English101  3 2

3 Science 101 4 1

4 History 101 3 3


- Ex: the "student_id" column in the "courses" table is the foreign key that refers to the "id" column in the "students" table. This establishes a relationship between the two tables, where each course is associated with a specific student through this foreign key relationship.

# What are the different relationship types that can be found in a relational database?

1- One-to-One Relationship: This type of relationship exists when each record in the first table is associated with only one record in the second table, and vice versa.

- Ex: You have a table named "employees" and a table named "job_details." Each employee can be associated with only one job, and each job can be assigned to only one employee. The primary key in the "employees" table can be used as a foreign key in the "job_details" table to create a one-to-one relationship between the two tables.

2- One-to-Many Relationship: This type of relationship exists when each record in the first table is associated with one or more records in the second table, but each record in the second table is associated with only one record in the first table.

- Ex: You have a table named "customers" and a table named "orders." Each customer can have multiple orders, but each order is assigned to only one customer. The primary key in the "customers" table can be used as a foreign key in the "orders" table to create a one-to-many relationship between the two tables.

3- Many-to-Many Relationship: This type of relationship exists when each record in the first table is associated with one or more records in the second table, and each record in the second table is associated with one or more records in the first table.

- Ex: You have a table named "students" and a table named "classes." Each student can be enrolled in multiple classes, and each class can have multiple students enrolled. To create a many-to-many relationship between the two tables, you can create a third table named "enrollments" that includes foreign keys from both the "students" and "classes" tables. The "enrollments" table can store information about each student's enrollment in each class.

# Identify a pair of tables that have a many-to-one relationship.
 Employee to Addresses
# Identify a pair of tables that have a one-to-one relationship.
user to employee
# Identify a many-to-many relationship in the diagram.
restaurant to orders and products