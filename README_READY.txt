HedgeHousing — Ready Starter (one-click)

What this package contains:
- frontend/  — Next.js source
- backend/   — Express source
- start.bat  — One-click starter for Windows (double-click)
- start.ps1  — PowerShell starter
- start.sh   — macOS/Linux starter (best effort)
- .env.example — example environment vars

Important:
- This package DOES NOT contain node_modules because this environment cannot download npm packages.
- The start scripts will automatically run `npm install` in both frontend and backend folders, then start the dev servers.
- You must have Node.js (v16 or later) installed on your system for the automatic install to work.
- For the database, either run MongoDB locally or set MONGO_URI in backend/.env to a MongoDB Atlas connection string.

How to run (Windows, easiest):
1. Unzip the package.
2. Double-click `start.bat`.
3. Two command windows will open; they will install dependencies and start the servers.
4. When both are running, open http://localhost:3000 in your browser.

If you want a truly offline bundle that contains node_modules and runs immediately with no internet or Node installed, I cannot produce that here because this environment cannot download or embed those packages. To create that offline bundle I'd need to run npm install in an environment with internet and include node_modules in the zip.

If you prefer, I can instead:
A) Give you a step-by-step where I walk you through installing Node and running the start.bat (I'll write exact clicks and commands).
B) Create Docker-compose files so you can run one `docker compose up` (requires Docker Desktop).
C) Help you set up a GitHub repo and CI to deploy to Vercel/Render.

Tell me which help you want — or just unzip and double-click start.bat and I'll help troubleshoot any error messages you see.
