# REST API Design - Order Management System (OMS)

---

## 📌 Overview

This document defines RESTful APIs for the Order Management System.
The system manages three core resources:

* Users
* Products
* Orders

Each API is mapped to database operations and follows REST principles.

---

## 🧱 Base URL

/api/v1

---

# 👤 USERS APIs

---

## 1. Create User

POST /users

Request:

```json
{
  "name": "Anuj",
  "email": "anuj@gmail.com"
}
```

Response:

```
204 No Content
```

---

## 2. Get All Users

GET /users

Response:

```json
[
  {
    "id": 1,
    "name": "Anuj",
    "email": "anuj@gmail.com"
  }
]
```

---

## 3. Get User by ID

GET /users/{id}

---

## 4. Delete User

DELETE /users/{id}

---

# 📦 PRODUCTS APIs

---

## 1. Create Product

POST /products

Request:

```json
{
  "name": "Laptop",
  "price": 50000,
  "stock": 10
}
```

Response:

```
204 No Content
```

---

## 2. Get All Products

GET /products

---

## 3. Search Products

GET /products?search=phone

---

## 4. Update Product

PUT /products/{id}

---

## 5. Delete Product

DELETE /products/{id}

---

# 🧾 ORDERS APIs

---

## 1. Create Order

POST /orders

Request:

```json
{
  "user_id": 1,
  "product_id": 2,
  "quantity": 2,
  "total_price": 40000
}
```

Response:

```
204 No Content
```

---

## 2. Get All Orders

GET /orders

---

## 3. Get Orders by User

GET /orders?user_id=1

---

## 4. Update Order Status

PATCH /orders/{id}

Request:

```json
{
  "status": "completed"
}
```

---

## 5. Delete Order

DELETE /orders/{id}

---

# 🔗 JOIN API (Advanced Query)

## Get Orders with Details

GET /orders/details

Response:

```json
[
  {
    "order_id": 1,
    "user_name": "Anuj",
    "product_name": "Laptop",
    "quantity": 1
  }
]
```

---

# ⚠️ HTTP STATUS CODES

| Code | Meaning      |
| ---- | ------------ |
| 200  | Success      |
| 204  | No Content   |
| 400  | Bad Request  |
| 404  | Not Found    |
| 409  | Conflict     |
| 500  | Server Error |

---

# 🧠 DESIGN PRINCIPLES

* RESTful architecture
* Resource-based endpoints
* Proper HTTP methods usage
* Stateless communication
* Direct mapping to SQL operations

---

# ✅ CONCLUSION

This API design provides a structured interface for interacting with the Order Management System and aligns with backend best practices.
