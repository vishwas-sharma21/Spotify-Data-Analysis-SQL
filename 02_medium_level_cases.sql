/*
Medium Level Business Questions - Enhanced Music Engagement and Platform Insights
Author: Vishwas Sharma
Date: 6-08-2025
*/

/* Case 6: Calculate average danceability per album

Use Case: Understand the musical style profile of each album.
Insight: Albums with higher danceability may attract specific listener demographics.
Business Impact: Use data to recommend albums for party or workout playlists.
*/
SELECT 
    album, 
    AVG(danceability) AS avg_danceability
FROM 
    spotify_details
GROUP BY 
    album;

/* Case 7: Find top 5 tracks by energy for dynamic playlist curation 

Use Case: Highlight songs with the highest energy for promotional features.
Insight: Energetic tracks perform well in active use cases (gym, parties).
Business Impact: Push these songs to targeted users to increase engagement.
*/
SELECT 
    track, 
    energy
FROM 
    spotify_details
ORDER BY 
    energy DESC
LIMIT 5;

/* Case 8: List tracks with official videos showing views and likes 

Use Case: Evaluate video content engagement for promotion or quality assessment.
Insight: Tracks with high video views and likes are strong candidates for cross-platform advertising.
Business Impact: Guide video marketing budget allocation.
*/
SELECT 
    track, 
    views, 
    likes
FROM 
    spotify_details
WHERE 
    official_video = TRUE;

/* Case 9: Total views per album for popularity assessment 

Use Case: Aggregate track-level views to album level to understand album reach.
Insight: Highly viewed albums indicate strong customer interest.
Business Impact: Visualize album success and plan re-releases or bonus content.
*/
SELECT 
    album, 
    SUM(views) AS total_album_views
FROM 
    spotify_details
GROUP BY 
    album;

/* Case 10: Identify tracks streamed more on Spotify than YouTube 

Use Case: Detect platform-specific track preferences.
Insight: Helps understand where to focus promotional efforts for maximum ROI.
Business Impact: Tailor platform-specific marketing and licensing deals.
*/
WITH PlatformStreams AS (
    SELECT 
        track, 
        artist,
        SUM(CASE WHEN most_played_on = 'Youtube' THEN stream ELSE 0 END) AS youtube_streams,
        SUM(CASE WHEN most_played_on = 'Spotify' THEN stream ELSE 0 END) AS spotify_streams
    FROM 
        spotify_details
    GROUP BY 
        track, 
        artist
)
SELECT 
    track, 
    artist, 
    spotify_streams, 
    youtube_streams
FROM 
    PlatformStreams
WHERE 
    spotify_streams > youtube_streams
    AND youtube_streams != 0;
