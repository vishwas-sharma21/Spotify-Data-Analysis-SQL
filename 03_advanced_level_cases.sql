/*
Advanced Level Business Questions - Complex Analytical Insights for Strategic Decision-Making
Author: Vishwas Sharma
Date: 6-08-2025
*/

/* Case 11: Rank top 3 most-viewed tracks for each artist 

Use Case: Identify the highest performing tracks per artist for targeted content promotion.
Insight: Focus marketing on top-performing songs to maximize user engagement.
Business Impact: Enable artist-specific ad campaigns and concert promotions.
*/
WITH ArtistTrackViews AS (
    SELECT 
        artist, 
        track, 
        SUM(views) AS total_views,
        DENSE_RANK() OVER (PARTITION BY artist ORDER BY SUM(views) DESC) AS rank_within_artist
    FROM 
        spotify_details
    GROUP BY 
        artist, 
        track
)
SELECT 
    artist, 
    track, 
    total_views,
    rank_within_artist AS rank
FROM 
    ArtistTrackViews
WHERE 
    rank_within_artist <= 3
ORDER BY 
    artist, 
    rank;

/* Case 12: Identify tracks with above-average liveness 

Use Case: Detect songs with strong "live" audience signals to enhance live event planning.
Insight: Tracks with higher liveness may resonate more in concert settings.
Business Impact: Use for setlist planning or playlist curation targeting live-event fans.
*/
SELECT 
    track, 
    liveness
FROM 
    spotify_details
WHERE 
    liveness > (SELECT AVG(liveness) FROM spotify_details);

/* Case 13: Measure variance of energy per album using CTE 

Use Case: Quantify diversity of album sound to aid in album-level promotion strategy.
Insight: Albums with high energy variance may appeal to broader audience segments.
Business Impact: Highlight diversity or consistency in music styles in marketing.
*/
WITH EnergyStats AS (
    SELECT 
        album, 
        MAX(energy) AS max_energy, 
        MIN(energy) AS min_energy
    FROM 
        spotify_details
    GROUP BY 
        album
)
SELECT 
    album, 
    max_energy, 
    min_energy, 
    (max_energy - min_energy) AS energy_difference
FROM 
    EnergyStats;
