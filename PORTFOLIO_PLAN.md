# Portfolio layout

The "Selected Work" grid as planned: three columns, empty cells are centring
placeholders. **Dashed borders = not built yet** (labelled *planned* too, since
GitHub strips the border styling; the VS Code markdown preview shows it).

<table>
  <tr>
    <td valign="top" width="33%" style="border: 2px dashed #F05F40; padding: 10px;">
      <strong>Sneaker Collection &amp; Release Tracker</strong> <em>· planned</em><br>
      TypeScript, Next.js, Prisma, PostgreSQL, Auth.js<br>
      <sub>Log the pairs you own, keep a wishlist, follow a release calendar;
      shareable public collection pages.<br>
      🔗 <code>next-sneaker-tracker.incertotech.com</code></sub>
    </td>
    <td valign="top" width="33%" style="border: 2px solid #161616; padding: 10px;">
      <strong>Project Storm · NBCUniversal</strong><br>
      React, Redux, GraphQL, Apollo, AWS Amplify, AWS Lambda, MSSQL
    </td>
    <td valign="top" width="33%" style="border: 2px dashed #F05F40; padding: 10px;">
      <strong>NBA Stats Explorer</strong> <em>· planned</em><br>
      Python, FastAPI, SQLAlchemy, pandas, PostgreSQL, React<br>
      <sub>Compare players, browse career and season trends, view shot charts.<br>
      One tile; the hover caption links to all three:<br>
      🔗 app · <code>react-nba-stats.incertotech.com</code><br>
      📄 API docs · <code>fastapi-nba-stats-api.incertotech.com</code><br>
      ↗ source code</sub>
    </td>
  </tr>
  <tr>
    <td valign="top" style="border: 2px dashed #F05F40; padding: 10px;">
      <strong>Premier League Tables</strong> <em>· planned</em><br>
      Go, net/http, html/template, pgx, sqlc, PostgreSQL<br>
      <sub>Sortable league table (home/away, last-5 form), position-over-season
      bump chart, team pages. Data from football-data.org.<br>
      🔗 <code>golang-premier-league.incertotech.com</code></sub>
    </td>
    <td valign="top" style="border: 2px dashed #F05F40; padding: 10px;">
      <strong>Live Site-Map Crawler</strong> <em>· planned</em><br>
      Go, goroutine worker pool, SSE, D3 force graph, embed<br>
      <sub>Enter a URL and watch the site's link graph grow live; obeys robots.txt,
      SSRF-safe. Full plan: <code>portfolio/golang-site-crawler/PLAN.md</code><br>
      🔗 <code>golang-site-crawler.incertotech.com</code></sub>
    </td>
    <td valign="top" style="border: 2px dashed #F05F40; padding: 10px;">
      <strong>Portfolio Project Status Page</strong> <em>· planned</em><br>
      Go, net/http, html/template, server-rendered SVG, pgx, sqlc, PostgreSQL<br>
      <sub>Public status page for the portfolio apps: 90-day uptime bars,
      response-time charts, incident history. Prod only in public.<br>
      🔗 <code>golang-portfolio-project-status-page.incertotech.com</code></sub>
    </td>
  </tr>
  <tr>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>To Do App</strong><br>
      React, Redux, Redux Thunk, React Router, Node.js, Nest.js, REST API
    </td>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>Electoral College Map</strong><br>
      React, React Hooks, SVG Map, Interactive
    </td>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>Course Admin</strong><br>
      React, Redux, Redux Thunk, React Router, Node.js, Nest.js, REST API
    </td>
  </tr>
  <tr>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>To Do API</strong><br>
      Nest.js, Node.js, TypeORM, PostgreSQL, REST API, Swagger
    </td>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>Blog API</strong><br>
      Nest.js, Node.js, TypeORM, PostgreSQL, GraphQL
    </td>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>Course Admin API</strong><br>
      Nest.js, Node.js, TypeORM, PostgreSQL, REST API, Swagger
    </td>
  </tr>
  <tr>
    <td valign="top"></td>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>Ecommerce</strong><br>
      Node, Express, Mongo, Payments, Stripe
    </td>
    <td valign="top"></td>
  </tr>
  <tr>
    <td valign="top"></td>
    <td valign="top" style="border: 2px solid #161616; padding: 10px;">
      <strong>Tax Blog</strong><br>
      Django, PostgreSQL
    </td>
    <td valign="top"></td>
  </tr>
</table>

## Planned project notes

**Sneaker Collection & Release Tracker** (Next.js + Prisma)
- Collectors log pairs they own (size, condition, price paid), keep a wishlist and follow an
  upcoming-release calendar; each user gets a shareable public collection page.
- Shows: server-rendered public pages, server actions, Auth.js accounts, Prisma relations
  (users, sneakers, collections, wishlists, releases).
- No good free sneaker API: seed the catalogue and allow user-added pairs. Only use images
  with the rights to them, or user uploads.

**NBA Stats Explorer** (FastAPI + React)
- Typed, data-heavy API with auto-generated Swagger docs; pandas for aggregations; React charts.
- **One portfolio tile, not two.** The API gets no tile of its own (unlike To Do API /
  Course Admin API). The hover caption carries three links: the title opens the app, then
  "API Docs ↗" (Swagger) and "Source Code ↗" below it.
- Data via `nba_api` (unofficial Python client for stats.nba.com): players and teams, box scores
  (advanced splits from 1996–97), shot charts with court x/y (1996–97+), player tracking
  (2013–14+), hustle stats, play-by-play, standings, draft and combine, live scoreboard.
- Caveats: unofficial (endpoints can change; NBA.com terms apply; fine for a personal demo).
  The NBA often blocks cloud-server IPs, so load data from a machine that works into Postgres
  and have the deployed app read only from the database. Rate-limited, so seed a few seasons
  once rather than fetching live.

**Premier League Tables** (Go)
- Pages: sortable league table with home/away versions and a last-five form guide;
  a position-over-season bump chart (every team's place after each matchweek); team pages
  with results, goals for/against by matchweek, home vs away, top scorers, clean sheets.
- Go: a scheduled ingestion job within the provider's rate limit into Postgres; tables
  computed from raw results (including historical positions per matchweek) rather than
  copied; JSON API + server-rendered `html/template` pages.
- Data options (verify current free tiers before committing): football-data.org (standings,
  matches, squads, scorers; free key, ~10 req/min), Fantasy Premier League API (rich,
  unofficial), openfootball on GitHub (historical results, public domain), API-Football
  (lineups, match stats; small free daily quota).
- Club crests: OK to use (non-commercial portfolio demo; decided 2026-10-07). football-data.org
  returns a crest URL per team. Add a footer credit, e.g. "Club crests and the Premier League
  name are trademarks of their respective owners."

**Portfolio Project Status Page** (Go)
- Monitors every portfolio app: concurrent health checks on a schedule (a goroutine per target
  with `time.Ticker`), `context.WithTimeout` per request, latency via `time.Since` (optionally
  split into DNS/connect/TLS/server with `net/http/httptrace`), TLS certificate expiry from
  `crypto/tls`.
- Results stored in Postgres (`pgx` + `sqlc`); SQL aggregates give daily uptime for the
  90-day bars and response-time percentiles.
- Incidents: a small state machine opens an incident after N consecutive failed checks and
  closes it on recovery.
- Page rendered by `html/template`, with uptime bars and charts drawn as inline SVG on the
  server, so it works without JavaScript. Templates and CSS bundled with `embed`.
- Environments: each target is labelled `prod` or `staging`. The public page shows prod only;
  staging is still checked, as an early warning, since staging and prod share one node.
- Alerts: after N failed checks in a row, plus a "recovered" message, no repeats while down.
  Production → phone push via ntfy (one `http.Post`); staging → quieter channel. Email later.
- Optional: Prometheus metrics (`prometheus/client_golang`) graphed in a **private** Grafana,
  with an environment dropdown. Never expose Grafana publicly; show it via screenshots or a
  snapshot (or Grafana Cloud's free tier for a hosted, read-only shared dashboard).

## Subdomains (proposed)

Same pattern as the existing apps: framework-app, with a separate host for API docs.

| App | Live app | API docs | Staging |
|---|---|---|---|
| Sneaker Collection & Release Tracker | `next-sneaker-tracker.incertotech.com` | (Next.js serves its own API) | `next-sneaker-tracker.staging.incertotech.com` |
| Premier League Tables | `golang-premier-league.incertotech.com` | (JSON API on the same host) | `golang-premier-league.staging.incertotech.com` |
| Status Page | `golang-status-page.incertotech.com` | (none) | (prod-only page; no staging host needed) |
| Live Site-Map Crawler | `golang-site-crawler.incertotech.com` | (none) | `golang-site-crawler.staging.incertotech.com` |
| NBA Stats Explorer | `react-nba-stats.incertotech.com` | `fastapi-nba-stats-api.incertotech.com` | `react-nba-stats.staging.incertotech.com`, `fastapi-nba-stats-api.staging.incertotech.com` |

Each new hostname also needs adding to the ACM certificate and CloudFront aliases in
`terraform/{staging,production}/main.tf`, plus its own Route53 hosted zone (matching how
every existing incertotech subdomain is set up).

