-- Task: List all bands with Glam rock as their main style, ranked by their longevity.

SELECT band_name, 
       IF(splitted[2] = 0, 2022 - formed[1], 2022 - formed[1] + (2022 - splitted[1])) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;
