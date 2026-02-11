## Sakila Movie Rental Dashboard

This project analyzes the Sakila database using Python, DuckDB, and Evidence.dev.
It includes interactive dashboards for:

- Revenue by film category and month
- Top customers and rental activity
- Film categories and associated movies
- Actors and the films they appeared in


## Running the Dashboard

### Local Development

Install dependencies:

```bash
npm install
npm run sources
npm run dev -- --host 0.0.0.0
```

### Codespaces

If using GitHub Codespaces, click Start Evidence in the status bar
to automatically install dependencies and preview the project.

**Note:** Codespaces is much faster on the Desktop app. After the Codespace has booted, select the hamburger menu → Open in VS Code Desktop.


### Deployment (Vercel)

The Evidence dashboard can be deployed using Vercel.

Steps:
1. Connect the GitHub repository to Vercel
2. Select the Evidence project
3. Set build command:

```bash
npm run build
```
4. Set output directory:
```bash
build/
```
5. Deploy
