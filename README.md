# 🛡️ GigInsure — AI-Powered Parametric Insurance Platform for Gig Workers

[![Deploy with Vercel](https://img.shields.io/badge/Frontend-Vercel-000000?style=for-the-badge&logo=vercel&logoColor=white)](https://giginsure-nine.vercel.app)
[![Deploy on Render](https://img.shields.io/badge/Backend-Render-46E3B7?style=for-the-badge&logo=render&logoColor=white)](#)
[![Python](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)](#)
[![React](https://img.shields.io/badge/React_19-61DAFB?style=for-the-badge&logo=react&logoColor=black)](#)
[![MongoDB](https://img.shields.io/badge/MongoDB_Atlas-47A248?style=for-the-badge&logo=mongodb&logoColor=white)](#)
[![Groq AI](https://img.shields.io/badge/Groq_AI-Llama_3.3_70B-f36027?style=for-the-badge)](#)

> **GigInsure** is an end-to-end, AI-driven parametric micro-insurance platform designed specifically for food delivery riders and gig economy workers in India. It automatically protects delivery riders from income loss caused by severe weather disruptions (heavy rain, severe heatwaves, high winds) with zero manual claim paperwork.

---

## 🌐 Live Production Links

- 🚀 **Live Web Application**: [https://giginsure-nine.vercel.app](https://giginsure-nine.vercel.app)
- 📡 **GitHub Repository**: [https://github.com/NishanthKamalakkannan/GIGINSURE.git](https://github.com/NishanthKamalakkannan/GIGINSURE.git)

---

## 🔑 Pre-seeded Demo Credentials

Test the platform instantly with pre-seeded accounts:

| Role | Email | Password | Access Rights |
| :--- | :--- | :--- | :--- |
| **Delivery Rider** | `rider@test.com` | `rider123` | Policy subscription, instant payouts, AI chatbot, rewards |
| **Admin Console** | `admin@giginsure.com` | `admin123` | System oversight, city risk heatmaps, fraud monitoring |

---

## ✨ Key Features

### 1. 🛡️ Dynamic Parametric Insurance
- **AI-Driven Risk Pricing**: Dynamic weekly premiums based on city-specific weather risk indices (Chennai, Mumbai, Delhi, Bangalore, etc.).
- **Automatic Claim Execution**: When local OpenWeather data breaches severity thresholds (e.g. >50mm rain or >40°C heatwave), claims are automatically triggered and paid directly to the rider's wallet.

### 2. 🤖 AI Risk Advisor Chatbot
- **Powered by Groq AI (Meta Llama 3.3 70B)**: Real-time conversational AI assisting riders on weather severity, shift safety, earnings loss predictions, and reward redemptions.

### 3. 📊 City Risk Heatmaps & Analytics
- Visualized weather disruptions and risk heatmaps across major gig worker hubs in India using interactive Recharts.

### 4. 💳 Payment Integration
- Supports Razorpay gateway as well as built-in simulated instant payment mode for testing.

### 5. 👑 Admin Dashboard & Fraud Oversight
- Real-time monitoring of active policies, payout volume, trigger history, and automated fraud rates.

---

## 🏗️ Tech Stack

```
                        ┌─────────────────────────────────┐
                        │      React 19 Frontend          │
                        │ (Tailwind CSS, Radix UI, CRACO) │
                        └────────────────┬────────────────┘
                                         │ REST API
                                         ▼
                        ┌─────────────────────────────────┐
                        │        FastAPI Backend          │
                        │    (Uvicorn, Motor, PyJWT)      │
                        └───────┬─────────────────┬───────┘
                                │                 │
               ┌────────────────┴───┐         ┌───┴────────────────┐
               │  MongoDB Database  │         │ External Services  │
               │  (Atlas Cloud DB)  │         │ - OpenWeather API  │
               └────────────────────┘         │ - Groq AI LLM      │
                                              │ - Razorpay Payments│
                                              └────────────────────┘
```

- **Frontend**: React 19, CRACO, Tailwind CSS, Radix UI, Lucide Icons, Framer Motion, Axios, Recharts, Sonner.
- **Backend**: Python 3.11+, FastAPI, Uvicorn, Motor (Async MongoDB), PyJWT, Bcrypt, Httpx.
- **Database**: MongoDB Atlas.
- **AI / LLM**: Groq LPU API (`llama-3.3-70b-versatile`).

---

## 🚀 Running Locally

### 1. Clone the repository
```bash
git clone https://github.com/NishanthKamalakkannan/GIGINSURE.git
cd GIGINSURE
```

### 2. Start Backend & Frontend with One Click (Windows)
Double click **`start_all.bat`** or run:

```bash
# Terminal 1 — Backend
cd backend
python -m pip install -r requirements.txt
python -m uvicorn server:app --reload --port 8000

# Terminal 2 — Frontend
cd frontend
npm install --legacy-peer-deps
npm start
```

Open [http://localhost:3000](http://localhost:3000) in your browser!

---

## 📄 License & Author

Developed by **Nishanth Kamalakkannan**  
GitHub: [@NishanthKamalakkannan](https://github.com/NishanthKamalakkannan)
