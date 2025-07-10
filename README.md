# 🔗 URL Shortener API

It is a simple URL shortner based on REST API, built with Node.js, express.js and MongoDB that shortens long URLs and allows redirection using a short code. It also tracks the number of times the url has been clicked and when it expires.

---

## 🚀 Features

- 🔗 Shorten any valid URL
- 🔁 Redirect via short code
- 🧮 Track number of clicks
- 🧼 Expire old links automatically
- 🔒 Rate limiting to prevent abuse
- ✅ RESTful API structure

---

## 🛠 Tech Stack

- **Backend**: Node.js, Express.js
- **Database**: MongoDB (via Mongoose)
- **Validation**: `validator` package
- **Short Code Generation**: `nanoid`
- **Rate Limiting**: `express-rate-limit`
- **Environment Config**: `dotenv`

---

## ⚙️ Setup Instructions

### 1. Clone the repository
```bash
git clone https://github.com/Amogh-38/url-shortener-api.git
cd url-shortener-api
```
### 2. Install Dependencies
```bash
npm install
```
### 3. Create a .env File
```env
PORT=5000
MONGO_URI=mongodb://localhost:27017/urlShortener
BASE_URL=http://localhost:5000
```
### 4. Start The Server
```bash
npm start
```
## API Endpoints

### ✅ POST `/shorten`

**Description:** Create a short URL

**Request Body (JSON):**
```json
{
  "url": "https://example.com",
  "expiryDays": 2
}
```
**Response**
```json
{
  "shortUrl": "http://localhost:5000/M3xtS8"
}
```

### 🔁 Get `/:code`

**Description** Redirect to original long URL

**Example:**
```
GET http://localhost:5000/M3xtS8
```

### 📊 Get `/analytics/:code`

**Description** Returns the number of times a short URL was clicked
**Response**
```json
{
    "originalUrl": "https://example.com/some/very/long/link",
    "clicks": 4
}
```
## 🧪 Postman Collection

You can test all endpoints using this [Postman Collection](./PostmanCollection/url-shortener.postman_collection.json).

## 👨‍💻 Author
Amogh Tiwari

## 📄 License

This project is licensed under the [MIT License](./LICENSE).