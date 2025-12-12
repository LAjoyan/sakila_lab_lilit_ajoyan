## Sakila Movie Rental Dashboard

This project analyzes the Sakila database using Python, DuckDB, and Evidence.dev.
It includes interactive dashboards for:

- Revenue by film category and month
- Top customers and rental activity
- Film categories and associated movies
- Actors and the films they appeared in


## Using Codespaces

If you are using this template in Codespaces, click the `Start Evidence` button in the bottom status bar. This will install dependencies and open a preview of your project in your browser - you should get a popup prompting you to open in browser.

Or you can use the following commands to get started:

```bash
npm install
npm run sources
npm run dev -- --host 0.0.0.0
```

See [the CLI docs](https://docs.evidence.dev/cli/) for more command information.

**Note:** Codespaces is much faster on the Desktop app. After the Codespace has booted, select the hamburger menu → Open in VS Code Desktop.

## Get Started from VS Code

The easiest way to get started is using the [VS Code Extension](https://marketplace.visualstudio.com/items?itemName=Evidence.evidence-vscode):



1. Install the extension from the VS Code Marketplace
2. Open the Command Palette (Ctrl/Cmd + Shift + P) and enter `Evidence: New Evidence Project`
3. Click `Start Evidence` in the bottom status bar

## Get Started using the CLI

```bash
npx degit evidence-dev/template my-project
cd my-project 
npm install 
npm run sources
npm run dev 
```

Check out the docs for [alternative install methods](https://docs.evidence.dev/getting-started/install-evidence) including Docker, Github Codespaces, and alongside dbt.



## Learning More

- [Docs](https://docs.evidence.dev/)
- [Github](https://github.com/evidence-dev/evidence)
- [Slack Community](https://slack.evidence.dev/)
- [Evidence Home Page](https://www.evidence.dev)

## Project Structure
```
├── pages/                                   # Evidence markdown pages
│   ├── index.md                             # Home page
│   ├── revenue.md                           # Revenue dashboard
│   ├── customer.md                          # Customer dashboard
│   ├── Category.md                           # Film categories dropdown
│   └── actor.md                             # Actors and film appearances
├── sources/Sakila/                          # SQL queries for dashboards
│   ├── revenue.sql
│   ├── month_revenue.sql
│   └── category_film.sql
```
