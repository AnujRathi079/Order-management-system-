# 🛒 Order Management System (OMS)

## 📌 Overview

This project is a backend-ready **Order Management System** designed using PostgreSQL.
It demonstrates database design, SQL operations, Dockerized setup, and REST API specification without implementing application code.

---

## 🚀 Features

* Relational database design (Users, Products, Orders)
* Fully defined SQL schema with constraints
* Seed data for testing
* CRUD and advanced SQL queries
* Dockerized PostgreSQL setup (auto schema + seed)
* REST API design (industry-standard)
* Postman collection for API simulation

---

## 🧱 Project Structure

```
order-management-system/
│
├── db/                # Schema, seed data, queries
├── docs/              # Database & API documentation
├── docker/            # Docker configuration
├── postman/           # Postman collection
└── README.md
```

---

## 🗄️ Database Design

* **Tables**:

  * users
  * products
  * orders

* **Relationships**:

  * One user → many orders
  * One product → many orders

* Includes:

  * Primary keys
  * Foreign keys
  * Constraints (NOT NULL, UNIQUE, CHECK)

📄 See: `docs/Database_Design.md`

---

## 📊 SQL Implementation

* `schema.sql` → Table creation
* `seed.sql` → Sample data
* `queries.sql` → CRUD + JOIN + aggregation

---

## 🐳 Docker Setup

Run:

```bash
docker-compose up
```

This will:

* Create PostgreSQL database
* Initialize schema
* Insert seed data automatically

---

## 🔗 REST API Design

Designed RESTful APIs for:

* Users
* Products
* Orders

Includes:

* CRUD operations
* Filtering & search
* JOIN-based endpoints
* Proper HTTP methods and status codes

📄 See: `docs/REST_API_Design.md`

---

## 🔄 API Usage Mapping

Maps each API to corresponding SQL queries.

📄 See: `docs/API_Usage.md`

---

## 📬 Postman Collection

* Structured API collection
* Sample request payloads
* Environment variables support

📁 Location: `postman/collection.json`

---

## 🧠 Key Concepts Demonstrated

* Database normalization
* Referential integrity
* SQL query design
* REST API principles
* Docker-based environment setup

---

## ⚙️ Tech Stack

* PostgreSQL
* SQL
* Docker
* Postman
* Git

---

## 👨‍💻 Author

**Anuj Rathi**

---

## ✅ Conclusion

This project showcases a complete backend system design workflow, from database modeling to API planning, following industry best practices.
