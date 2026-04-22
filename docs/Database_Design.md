# 📄 Database Design Documentation



## 📌 Overview

This database design represents a simple **Order Management System** with three core entities:

* Users
* Products
* Orders

The schema is **minimal, normalized, and scalable** for future enhancements.

---

## 🧩 Entities & Schema

### 👤 Users Table

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

**Description:**

* Stores user details
* Email is unique
* Each user is identified by `id`

---

### 📦 Products Table

```sql
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock_quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

**Description:**

* Stores product information
* Tracks inventory using `stock_quantity`

---

### 🛒 Orders Table

```sql
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10,2),
    order_status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
```

**Description:**

* Stores order transactions
* Links users and products using foreign keys

---

## 🔗 Relationships

* One user → many orders (1:N)
* One product → many orders (1:N)

---

## 📏 Business Rules

* A user can place multiple orders
* Each order belongs to one user
* A product cannot be ordered if `stock_quantity = 0`
* Stock decreases after order placement
* `total_price = price × quantity`
* Order status flow:

  * pending → shipped → delivered → cancelled
* Email must be unique

---

## ⚙️ Constraints & Indexing

```sql
CREATE INDEX idx_orders_user_id ON orders(user_id);
CREATE INDEX idx_orders_product_id ON orders(product_id);
```

---

## 🚀 Future Improvements

* Add `order_items` table (for multiple products per order)
* Add `product_categories`
* Add `payments` system
* Add `user_roles` and authentication

---

## 🧠 Design Decisions

* Only 3 tables used (simple design)
* Avoided unnecessary complexity
* Fully normalized structure
* Easy to scale later

---

## ✅ Final Architecture

```
Users (1) ────< Orders >──── (1) Products
```

---

## 🎯 Conclusion

* Clean and simple schema
* Interview-ready design
* Scalable for real-world applications

---
