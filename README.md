# Antigravity Email App

**Antigravity** is an intelligent, AI-driven email management application designed to supercharge user productivity. It securely connects to Gmail via OAuth 2.0 and leverages the Gemini API to summarize long threads and draft context-aware replies.

This project is built using Next.js (App Router), Vanilla CSS, and uses `iron-session` for secure cookie-based session management.

## Prerequisites

Before you can run this project locally, you must have the following installed:

1. **Node.js**: (Version 18.17 or higher) 
   - Check if installed by running: `node -v`
   - **Important:** If you see "command not found", please download and install Node.js from [nodejs.org](https://nodejs.org/).
2. **NPM** (Comes with Node.js)
   - Check if installed by running: `npm -v`

## Step 1: Set up Google Cloud Credentials

To connect to Gmail, you need to create OAuth 2.0 credentials in the Google Cloud Console.

1. Go to the [Google Cloud Console](https://console.cloud.google.com/).
2. Create a new project (or select an existing one).
3. Navigate to **APIs & Services > Library** and enable the **Gmail API**.
4. Navigate to **APIs & Services > OAuth consent screen**.
   - Choose "External" (if you don't have a Google Workspace) and fill out the required App Information.
   - Add your email as a Test User.
5. Navigate to **APIs & Services > Credentials**.
   - Click "Create Credentials" -> "OAuth client ID".
   - Application type: **Web application**.
   - Name: "Antigravity Local".
   - Authorized JavaScript origins: `http://localhost:3000`
   - Authorized redirect URIs: `http://localhost:3000/api/auth/callback`
   - Click "Create".
6. Copy the **Client ID** and **Client Secret**.

## Step 2: Set up Gemini API Key

1. Go to Google AI Studio ([aistudio.google.com](https://aistudio.google.com/)).
2. Create a new API key.
3. Copy the **API Key**.

## Step 3: Environment Variables

Create a file named `.env.local` in the root of the project directory (`d:\VS code program\project_nextwave`) and add the following values:

```env
# Google OAuth 2.0
GOOGLE_CLIENT_ID="your_google_client_id"
GOOGLE_CLIENT_SECRET="your_google_client_secret"
GOOGLE_REDIRECT_URI="http://localhost:3000/api/auth/callback"

# Secret password for encrypting the session cookie (must be at least 32 characters long)
SESSION_PASSWORD="complex_password_at_least_32_characters_long_123!"

# Gemini API
GEMINI_API_KEY="your_gemini_api_key"
```

## Step 4: Installation

Open a terminal in the project root directory (`d:\VS code program\project_nextwave`) and run:

```bash
npm install
```

## Step 5: Running the Project Locally

After the dependencies have finished installing, start the Next.js development server:

```bash
npm run dev
```

Open your browser and navigate to [http://localhost:3000](http://localhost:3000) to view the application.

## Troubleshooting

- **"node is not recognized"**: You need to install Node.js.
- **OAuth "Access blocked: App's request is invalid"**: Ensure your Authorized redirect URIs in Google Cloud perfectly match `http://localhost:3000/api/auth/callback`.
- **API Errors**: Ensure your `.env.local` variables are correctly copied without any extra spaces or quotes.
