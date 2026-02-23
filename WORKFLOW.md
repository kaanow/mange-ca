# Workflow: Making changes and getting them live on Railway

This project is **view-only live** — no local server. You edit, push, then check the live site.

**First time only:** Add a PostgreSQL database in Railway and set `DATABASE_URL` on the app (see README). After that, everything is push-to-deploy.

---

## The big picture

1. **Edit files** in this repo (`public/`).
2. **Commit and push** to GitHub (`main`).
3. **Railway** rebuilds and redeploys (about 1–3 minutes).
4. **Open your live URL** to see the update.

So: **edit → commit & push → wait a minute → refresh your live site**.

---

## Step 1: Know where to edit

| What you want to change | What to do |
|------------------------|------------|
| Styling (colors, layout) | Edit `public/style.css` |
| Homepage or recipe layout | Edit files in `views/` |
| **Add a recipe** | Ask the AI; it adds a new migration file in `migrations/`. You push; migration runs on deploy. |

---

## Step 2: Commit and push

When you’re happy with your changes:

```bash
git add .
git commit -m "Short description of what you changed"
git push origin main
```

Use your real branch name if it’s not `main` (e.g. `master`).

---

## Step 3: View the update live

**Live URL:** https://menu.eatlogicalsentences.com

After the push, wait 1–3 minutes, then open that URL in the browser and refresh (or hard-refresh: Cmd+Shift+R on Mac).

---

## Step 4: Verify updates are showing

- **Yourself:** Open https://menu.eatlogicalsentences.com and confirm the content matches what you changed.
- **With Cursor:** The AI is set up to check the live site as part of its workflow after making changes (a standing request, not scheduled). After you push, the AI can fetch the live URL and confirm your updates are visible. You can also ask explicitly: “check the live site” or “verify my last change is live.”

---

## Finding your live site URL in Railway

Railway does **not** show a URL until you generate one.

1. Go to [railway.app](https://railway.app) and open your project.
2. **Click the service** (the box for this app, e.g. “mange-ca”) so the right-hand panel opens.
3. In that panel you’ll see: **Deployments**, **Variables**, **Metrics**, **Settings**. Click **Settings**.
4. Scroll to **Networking** (or **Public Networking**).
5. Click **Generate Domain** (or **Generate domain**).
6. Railway will create a URL like:  
   **`something-random.up.railway.app`**  
   That’s your live site. Copy it or open it in a new tab.

**If you don’t see “Generate Domain”:**  
Make sure you’re in the **service** settings (click the service tile first), not the project or workspace settings. If you previously added a TCP Proxy to this service, remove it; then “Generate Domain” will appear.

---

## Pointing a subdomain to your site

To use a subdomain you own (e.g. **recipes.yourdomain.com**) instead of the `*.up.railway.app` URL:

### 1. Add the custom domain in Railway

1. In your **service** → **Settings** → **Networking** (same place you generated the domain).
2. Under **Custom Domains**, type your subdomain, e.g. **recipes.yourdomain.com**.
3. Click **+ Custom Domain** (or **Add custom domain**).
4. Railway will show a **CNAME target**, e.g. **`abc123.up.railway.app`**. Copy it — you’ll use it in your DNS.

### 2. Add a CNAME record at your DNS provider

Where you manage DNS for **yourdomain.com** (Cloudflare, Namecheap, GoDaddy, etc.):

- **Type:** CNAME  
- **Name / Host:** the subdomain only — e.g. **recipes** (for recipes.yourdomain.com).  
  Some providers want **recipes.yourdomain.com**; use what they ask for.
- **Value / Target / Points to:** the CNAME Railway gave you (e.g. **abc123.up.railway.app**).  
  No `https://`, no trailing slash. Often you can leave off the final dot.

Save the record.

### 3. Wait and verify

- DNS can take a few minutes up to 72 hours (usually under an hour).
- In Railway, when the domain is verified you’ll see a **green check** next to it.
- Railway will issue an SSL certificate so the subdomain works over **https**.

**If you use Cloudflare:**  
Set SSL/TLS to **Full** (not Full Strict). For wildcard subdomains, ensure Universal SSL is enabled. If Railway shows “Cloudflare proxy detected,” that’s normal.

---

## Quick reference

| Goal                    | Action |
|------------------------|--------|
| **Live site**          | https://menu.eatlogicalsentences.com |
| Edit content            | Change files in `public/` |
| See what changed        | `git status` |
| Commit & deploy         | `git add .` → `git commit -m "..."` → `git push origin main` |
| Verify updates          | Open live URL or ask Cursor to check the live site |
| Find live URL (Railway) | Railway → project → **click service** → Settings → Networking → Generate Domain |
| Use your own subdomain  | Railway: add custom domain → copy CNAME. DNS: add CNAME record → point to that value |

---

## If something goes wrong

- **“Nothing happens when I push”**  
  In Railway, check that the project is connected to this GitHub repo and the correct branch (e.g. `main`). Check the latest deployment and its logs for errors.

- **“The live site is wrong or old”**  
  Edit only files inside **`public/`** — that’s what the server serves. Then commit and push again.

- **“I can’t find my URL”**  
  You must generate a domain once: **click your service** (not the project), open **Settings**, then **Networking**, and use **Generate Domain**.

Once this is routine, you’ll just: edit → push → open your live URL and refresh.
