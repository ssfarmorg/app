SS Farm Fresh Milk Delivery Platform

A fully ready-to-deploy milk delivery platform with subscription management, customer dashboards, admin panel, notifications, and payment integration. Built with Node.js, MySQL, React, MSG91, and Razorpay/UPI.

---

Table of Contents

* Features
* Folder Structure
* Setup & Installation
* Run Locally
* Deployment
* Environment Variables
* License

---

Features

Backend:

* Node.js + Express APIs
* MySQL database for customers, products, subscriptions, and orders
* Cron jobs for automated subscription order generation
* SMS/WhatsApp notifications via MSG91
* Payment integration: Razorpay and UPI

Frontend:

* React SPA for Admin and Customer dashboards
* Admin dashboard: manage products, customers, orders, subscriptions, analytics, and messaging
* Customer dashboard: place orders, view subscriptions, make payments
* Recharts for visual analytics

---

Folder Structure

ssfarm-delivery/
├── backend/                # Node.js backend
│   ├── server.js
│   ├── db.js
│   ├── admin.js
│   ├── subscription.js
│   ├── package.json
│   ├── .env.example
│   └── schema.sql
├── frontend/               # React frontend
│   ├── public/
│   ├── src/
│   └── package.json
├── run-ssfarm.bat          # Windows local run script
├── run-ssfarm.sh           # Linux/Mac local run script
└── README.txt

---

Setup & Installation

1. Clone the repository
   git clone [https://github.com/YOUR_USERNAME/ssfarm-delivery.git](https://github.com/YOUR_USERNAME/ssfarm-delivery.git)
   cd ssfarm-delivery

2. Set up MySQL database
   mysql -u root -p
   SOURCE ./backend/schema.sql;

3. Configure environment variables
   Copy .env.example in backend/ to .env and fill in your credentials:

PORT=4000
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=ssfarm_db
JWT_SECRET=your-secret
MSG91_AUTH_KEY=your-msg91-key
RAZORPAY_KEY_ID=your-razorpay-key
RAZORPAY_KEY_SECRET=your-razorpay-secret

---

Run Locally

Windows:
Double-click run-ssfarm.bat to install dependencies and start backend & frontend.

Linux / Mac:
chmod +x run-ssfarm.sh
./run-ssfarm.sh

* Backend: [http://localhost:4000](http://localhost:4000)
* Frontend: [http://localhost:3000](http://localhost:3000)

---

Deployment

Backend (Render):

1. Go to Render → New → Web Service
2. Connect GitHub repository → select backend/ folder
3. Build command: npm install
4. Start command: node server.js
5. Add environment variables from .env
6. Deploy

Frontend (Vercel):

1. Go to Vercel → New Project → import GitHub repo
2. Select frontend/ folder
3. Build command: npm run build
4. Output directory: build
5. Environment variable: REACT_APP_API_URL = backend URL
6. Deploy

---

Environment Variables

Backend .env:
PORT=
DB_HOST=
DB_USER=
DB_PASSWORD=
DB_NAME=
JWT_SECRET=
MSG91_AUTH_KEY=
RAZORPAY_KEY_ID=
RAZORPAY_KEY_SECRET=

Frontend .env:
REACT_APP_API_URL=[http://localhost:4000](http://localhost:4000)

---

License

MIT License
