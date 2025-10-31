# HedgeHousing — Starter Full-Stack App
This repository is a starter full-stack implementation for **HedgeHousing** (Next.js frontend + Express backend + MongoDB).
It is configured for landlords / lawyers to post properties directly (no agents). Supports residential, hotels, Airbnb, service apartments, complaints via email and WhatsApp redirect, file uploads (image), basic JWT auth, and an admin dashboard stub.

## What's included
- `frontend/` — Next.js pages (minimal, ready to expand)
- `backend/` — Express API (auth, properties, uploads, complaints, whatsapp redirect)
- `.env.example` — example env variables
- `README.md`

## Quick start (local)
1. Install dependencies for frontend and backend separately.
2. Create `.env` files based on `.env.example`.

### Backend (server)
```bash
cd backend
npm install
# set .env (see .env.example)
npm run dev
```

### Frontend (client)
```bash
cd frontend
npm install
npm run dev
```

The frontend assumes backend API base at `NEXT_PUBLIC_API_URL` environment variable.

## Notes
- Media uploads are stored in backend `uploads/` directory (for production use S3).
- Wallet/escrow and AI matching are stubbed and marked `TODO` for you to implement.
- Replace `MONGO_URI` and `JWT_SECRET` in production.

Happy deploying — extract and push to your GitHub repo.
