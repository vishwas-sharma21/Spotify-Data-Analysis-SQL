<h1 align="center">🎵 Spotify Data Analysis using SQL 🎵</h1>

<p align="center">
  <img src="https://img.shields.io/badge/SQL-PostgreSQL-316192?logo=postgresql&logoColor=white&style=for-the-badge" alt="SQL Badge" />
  <img src="https://img.shields.io/badge/Excel-Microsoft%20Excel-217346?logo=microsoft-excel&logoColor=white&style=for-the-badge" alt="Excel Badge" />
  <img src="https://img.shields.io/badge/Platform-GitHub-181717?logo=github&logoColor=white&style=for-the-badge" alt="GitHub Badge" />
  <img src="https://img.shields.io/badge/Business%20Intelligence-BI-f9a825?logo=tableau&logoColor=white&style=for-the-badge" alt="Business Intelligence Badge" />
</p>

## Project Overview
This project explores the Spotify music dataset to derive actionable insights by querying millions of streaming and video engagement data points. By leveraging SQL’s analytical capabilities — including window functions, CTEs, and aggregation — we resolve real-world business questions that help drive marketing strategies, content promotion, and product enhancement for digital music platforms.

## Dataset Description
The `spotify_details` table contains song metadata, audio features (danceability, energy, valence, etc.), video metrics (views, likes, comments), licensing data, and platform-specific streaming counts. This rich dataset simulates what a music streaming business could analyze for performance and engagement.

### Key columns:
- `artist`, `track`, `album`, `album_type` — song metadata
- `danceability`, `energy`, `liveness`, etc. — audio feature metrics
- `views`, `likes`, `comments` — video engagement metrics
- `licensed`, `official_video` — track licensing and official presence
- `stream` — total stream count across platforms
- `most_played_on` — leading streaming platform

## Business Questions Solved

### Easy Level - Core Business Insights
1. Identify high-streaming tracks exceeding 1 billion streams for potential highlights.
2. List all albums with artists to understand product catalog.
3. Aggregate total user comments on licensed tracks to evaluate user engagement.
4. Filter out singles to assess release strategy.
5. Count tracks per artist for catalog size and prominence.

### Medium Level - Deeper User and Content Insights
1. Calculate average danceability per album to gauge musical style.
2. Highlight top 5 tracks by energy — perfect for promotions and playlist curation.
3. Analyze views and likes of official videos — social engagement quality.
4. Aggregate album-wise views for marketing prioritization.
5. Compare streaming platforms for track popularity insights.

### Advanced Level - Complex Analytical Use Cases
1. Rank top 3 most-viewed tracks per artist for targeted marketing.
2. Spotlight tracks with above-average liveness indicating strong live audience appeal.
3. Measure energy variance per album to understand diversity in sound.

## Tools Used
- SQL (compatible with PostgreSQL / MySQL with minor tweaks)
- Window Functions, Common Table Expressions (CTEs)
- Aggregate and conditional functions

## Query Optimization Techniques
- Usage of CTEs to simplify complex queries and improve readability.
- Use of window functions (`dense_rank()`) for optimized ranking.
- Aggregation push-down by grouping and filtering early.
- Precise filtering conditions to minimize intermediate data.

## How to Run the Project
1. Load the `spotify_details` table schema and populate data in your SQL environment.
2. Execute individual SQL scripts in the `/sql` folder or run queries section-wise.
3. Analyze outputs and adapt queries for your dataset version.



---

