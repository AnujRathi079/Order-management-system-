# 📦 Order Management System – API ↔ SQL Mapping Documentation

This document explains how each API endpoint maps to its underlying SQL operations, along with detailed explanations of how the system behaves internally.

---

# 🧠 System Overview

This system follows a typical backend architecture:

* **Client (Frontend / Postman)** → sends HTTP request
* **API Layer (Backend / FastAPI / Flask / Node)** → processes request
* **Database (PostgreSQL)** → executes SQL queries

---

# 📊 API to SQL Mapping

| API Endpoint   | SQL Operation          |
| -------------- | ---------------------- |
| GET /products  | SELECT * FROM products |
| POST /orders   | INSERT INTO orders     |
| GET /orders    | JOIN query             |
| DELETE /orders | DELETE FROM orders     |

---

# 🔹 1. GET /products

## 📌 Purpose

Fetch all available products from the database.

## 🧾 SQL Query

```sql
SELECT * FROM products;
```

## 🔍 Explanation

* `SELECT` → used to retrieve data
* `*` → means all columns
* `FROM products` → target table

## ⚙️ Backend Flow

1. Client hits `/products`
2. Backend executes SELECT query
3. Database returns all rows
4. Backend converts to JSON
5. Response sent to client

## 📤 Example Response

```json
[
  {
    "id": 1,
    "name": "Laptop",
    "price": 50000
  }
]
```

---

# 🔹 2. POST /orders

## 📌 Purpose

Create a new order in the system.

## 🧾 SQL Query

```sql
INSERT INTO orders (user_id, total_price)
VALUES (1, 50000);
```

## 🔍 Explanation

* `INSERT INTO` → adds new row
* `(user_id, total_price)` → columns
* `VALUES` → actual data

## ⚙️ Backend Flow

1. Client sends order data (JSON)
2. Backend validates input
3. SQL INSERT query runs
4. New order stored in DB
5. Success response returned

## 📤 Example Request

```json
{
  "user_id": 1,
  "total_price": 50000
}
```

## 📤 Example Response

```json
{
  "message": "Order created successfully"
}
```

---

# 🔹 3. GET /orders

## 📌 Purpose

Fetch all orders along with related product details.

## 🧾 SQL Query (JOIN)

```sql
SELECT o.id, o.user_id, p.name, p.price
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id;
```

## 🔍 Explanation

* `JOIN` → combines multiple tables
* `orders` → main table
* `order_items` → mapping table
* `products` → product details

## ⚙️ Backend Flow

1. Client hits `/orders`
2. Backend executes JOIN query
3. Data from multiple tables combined
4. Structured JSON returned

## 📤 Example Response

```json
[
  {
    "order_id": 1,
    "product": "Laptop",
    "price": 50000
  }
]
```

---

# 🔹 4. DELETE /orders

## 📌 Purpose

Delete an order from the system.

## 🧾 SQL Query

```sql
DELETE FROM orders WHERE id = 1;
```

## 🔍 Explanation

* `DELETE FROM` → removes data
* `WHERE` → specifies which record

## ⚙️ Backend Flow

1. Client sends DELETE request
2. Backend extracts order ID
3. SQL DELETE query executes
4. Record removed from DB

## 📤 Example Response

```json
{
  "message": "Order deleted successfully"
}
```