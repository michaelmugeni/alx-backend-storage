-- SQL script to list all bands with Glam rock as their main style,
-- ranked by their longevity

-- Import the metal_bands.sql dump before running this script

SELECT band_name, 
       (2022 - formed) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;
