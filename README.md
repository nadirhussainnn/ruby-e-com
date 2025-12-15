# Store – Rails E-commerce Application

A simple e-commerce application built with **Ruby on Rails 8**, featuring product management, authentication, rich text descriptions, and image uploads.

---

## Versions

- **Ruby:** `3.4.7`
- **Rails:** `8.1.1`

---

## System Dependencies

Ensure the following are installed on your system:

- Ruby `3.4.7`
- Node.js (required for Action Text / Trix)
- Yarn or npm (optional)

---

## Configuration

Install Ruby gems:

```bash
bundle install
```

> **macOS note:**  
> If this project was downloaded as a ZIP file, macOS may block execution of Rails binaries.  
> Run the following before starting the server:

```bash
xattr -dr com.apple.quarantine .
chmod +x bin/*
```

---

## Database Creation

Create the database:

```bash
bin/rails db:create
```

---

## Database Initialization

Run database migrations:

```bash
bin/rails db:migrate
```

(Optional) Seed sample data:

```bash
bin/rails db:seed
```

---

## Running the Application

Start the Rails server:

```bash
bin/rails server
```

Open your browser at:

```
http://localhost:3000
```

---

## How to Run the Test Suite

Run all tests:

```bash
bin/rails test
```

---

## Features

- User authentication
- Product management (CRUD)
- Rich text editor for product descriptions (Action Text + Trix)
- Image uploads using Active Storage
- Inventory tracking
- Internationalization (I18n)
- Responsive UI with custom CSS

---

## Services

This application uses built-in Rails services only:

- **Active Storage** – image uploads
- **Action Text (Trix)** – rich text editing
- **SQLite** – database

No external job queues, caches, or search engines are required for development.

---

## Notes

- This project is intended for learning and demonstration purposes.
- Feel free to fork, modify, and extend.

---