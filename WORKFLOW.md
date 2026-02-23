# Workflow: Making changes and getting them live on Railway

This guide walks you through the cycle: **edit locally → see it work → push to GitHub → Railway shows the update**.

---

## The big picture

1. **You edit files** on your computer (in this repo).
2. **You run the site locally** to check it looks right.
3. **You commit and push** to GitHub (e.g. `main`).
4. **Railway** sees the push, rebuilds, and redeploys. A minute or two later, your live site shows the new version.

So: **edit → test locally → git commit & push → wait for Railway**.

---

## Step 1: Know where to edit

The site is served from the **`public/`** folder. That’s what the Express server and Railway use.

| What you want to change | File to edit |
|------------------------|--------------|
| Homepage content       | `public/index.html` |
| All styling (colors, layout, fonts) | `public/style.css` |
| New recipe page       | Create `public/recipes/your-recipe.html` and link from the homepage |

**Tip:** If you had files in the project root (`index.html`, `style.css`), those are *not* what the server serves. Always edit the copies inside `public/`.

---

## Step 2: Run the site on your computer

Before pushing, run the app locally so you can see your changes.

In a terminal, from the project folder:

```bash
cd /Users/pivot/Documents/repo/mange-ca
npm install
npm start
```

You should see something like: `Mange Ça running on port 3000`.

Open a browser and go to: **http://localhost:3000**

- Change something in `public/index.html` or `public/style.css`, save, then **refresh the browser** to see the update.
- When you’re done testing, stop the server with **Ctrl+C** in the terminal.

---

## Step 3: Save your changes with Git (commit)

When you’re happy with the changes:

1. **Stage** the files you changed:
   ```bash
   git add public/index.html
   git add public/style.css
   ```
   Or stage everything that changed:
   ```bash
   git add .
   ```

2. **Commit** with a short message describing what you did:
   ```bash
   git commit -m "Update hero text and button style"
   ```

---

## Step 4: Push to GitHub

Pushing sends your commits to GitHub. Railway is usually connected to your GitHub repo and deploys when you push to `main`.

```bash
git push origin main
```

If your default branch has another name (e.g. `master`), use that instead of `main`.

---

## Step 5: Railway deploys

- Railway detects the new push and starts a new build.
- In the Railway dashboard you’ll see a new deployment; it often takes **1–3 minutes**.
- When it’s done, open your live site URL — you should see your changes.

**If you don’t see changes:**  
Hard-refresh the page (e.g. Cmd+Shift+R on Mac) to avoid cached old version.

---

## Quick reference

| Goal              | Command / action |
|-------------------|------------------|
| Test locally      | `npm install` then `npm start` → open http://localhost:3000 |
| See what changed  | `git status` |
| Commit changes    | `git add .` then `git commit -m "Your message"` |
| Deploy to Railway | `git push origin main` |

---

## If something goes wrong

- **“Nothing happens when I push”**  
  Check in the Railway dashboard that the project is linked to this repo and to the correct branch (usually `main`). Check the latest deployment logs for errors.

- **“The live site is old / wrong”**  
  Make sure you’re editing files in **`public/`**, not only in the root. Only `public/` is served.

- **“I get errors when I run `npm start`”**  
  Run `npm install` first. If it still fails, read the error message; it often points to a missing file or a typo in paths (e.g. `public` folder missing).

Once this cycle feels familiar (edit → `npm start` → commit → push), you can do it quickly whenever you want to update the site.
