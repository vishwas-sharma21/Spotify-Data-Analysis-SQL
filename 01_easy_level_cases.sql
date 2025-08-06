/*
Easy Level Business Questions - Core Product and Engagement Insights
Author: Vishwas Sharma
Date: 6-08-2025
*/

/* Case 1: Identify blockbuster tracks with over 1 billion streams 

Use Case: Discover high-performing tracks to prioritize in marketing campaigns.
Insight: Helps highlight songs that drive the majority of platform traffic.
Business Impact: Promote these tracks in featured playlists or ads.
*/
SELECT 
    track, 
    stream
FROM 
    spotify_details
WHERE 
    stream > 1000000000;

/* Case 2: Catalog - List all albums with their respective artists

Use Case: Understand the product catalog structure and artist-album relationships.
Insight: Provides a mapping to aid music categorization or partnership discussions.
Business Impact: Organize artist portfolios and streamline content management.
*/
SELECT 
    DISTINCT artist, 
    album
FROM 
    spotify_details;

/* Case 3: Calculate total comments for licensed tracks 

Use Case: Measure user engagement on officially licensed content.
Insight: Licensed tracks garnering more comments indicate stronger fan interactions.
Business Impact: Allocate resources to licensed content for better user retention.
*/
SELECT 
    SUM(comments) AS total_comments_on_licensed_tracks
FROM 
    spotify_details
WHERE 
    licensed = TRUE;

/* Case 4: Extract all single tracks 

Use Case: Analyze single releases separately to evaluate marketing effectiveness.
Insight: Singles are typically promoted differently than albums.
Business Impact: Tailor advertising and playlist inclusion strategies for singles.
*/
SELECT 
    track 
FROM 
    spotify_details
WHERE 
    album_type = 'single';

/* Case 5: Count total tracks per artist 

Use Case: Assess artist content volume on the platform.
Insight: Artist catalog size often correlates with their popularity or partnership level.
Business Impact: Negotiate artist-specific promotions or exclusives based on presence.
*/
SELECT 
    artist, 
    COUNT(track) AS total_tracks
FROM 
    spotify_details
GROUP BY 
    artist;
