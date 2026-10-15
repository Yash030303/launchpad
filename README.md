# LaunchPad — GitHub Actions Practice Website

A beginner-friendly, responsive five-page static website built with HTML, CSS, and JavaScript.

## Pages
- `index.html` — Home
- `about.html` — About
- `services.html` — Services
- `projects.html` — Projects
- `contact.html` — Demo contact form (no backend; does not send data)

## Run locally
Open `index.html` in your browser, or use the VS Code Live Server extension.

## Push to GitHub
1. Create a new empty GitHub repository.
2. Extract this project and open its folder in a terminal.
3. Run:

```bash
git init
git add .
git commit -m "Add LaunchPad practice website and CI workflow"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
git push -u origin main
```

Replace the remote URL with your repository URL.

## GitHub Actions practice
The workflow at `.github/workflows/ci.yml` runs when you push to `main`, open a pull request to `main`, or manually start it from the Actions tab. It checks that all five pages and shared assets exist, and that every page links to all five navigation pages.

### Practice tasks
1. Change a heading and push the change. Find the run in the **Actions** tab.
2. Add a new required-file check to `ci.yml`, then push.
3. Make a check fail on purpose by temporarily changing a filename in the workflow. Read the logs, fix the check, and push again.
4. Create a branch, edit `services.html`, push the branch, and open a pull request.
5. Add a new page such as `pricing.html` and update the workflow to check for it.
6. Optional next step: publish the website with GitHub Pages.

## Enable GitHub Pages (optional)
For a simple static site, open repository **Settings → Pages** and configure publishing from the `main` branch and `/ (root)` if that option is available. If you choose a GitHub Actions deployment source instead, follow GitHub Pages' current setup instructions and add a deployment workflow separately. The included workflow only validates the files; it does not deploy the site.
