-- Task: List all bands with Glam rock as their main style, ranked by their longevity.

SELECT band_name,
       CASE
           WHEN split IS NOT NULL THEN split - formed
           ELSE 2022 - formed
       END AS lifespan
FROM (
    SELECT band_name,
           SUBSTRING_INDEX(lifespan, '-', 1) AS formed,
           SUBSTRING_INDEX(lifespan, '-', -1) AS split
    FROM metal_bands
) AS band_lifespan
WHERE band_name IN (
    SELECT band_name
    FROM metal_bands
    WHERE main_style = 'Glam rock'
)
ORDER BY lifespan DESC;
