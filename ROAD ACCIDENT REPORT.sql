create database road_accident_project;
use road_accident_project;
##Total_CASES##
#BY_CITY
SELECT 
    `Million Plus Cities`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Total number of Accidents'
        THEN Count ELSE 0 END) AS total_accidents,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count ELSE 0 END) AS total_deaths,
    SUM(CASE 
        WHEN `Outcome of Incident`='Total Injured'
        THEN Count ELSE 0 END) AS total_injuries,
    SUM(CASE 
        WHEN `Outcome of Incident` IN 
        ('Total number of Accidents','Persons Killed','Total Injured')
        THEN Count ELSE 0 END) AS total_cases
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Million Plus Cities`
ORDER BY total_cases DESC;
#BY_CATEGORY
SELECT 
    `Cause category`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Total number of Accidents'
        THEN Count ELSE 0 END) AS total_accidents,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count ELSE 0 END) AS total_deaths,
    SUM(CASE 
        WHEN `Outcome of Incident`='Total Injured'
        THEN Count ELSE 0 END) AS total_injuries,
    SUM(CASE 
        WHEN `Outcome of Incident` IN 
        ('Total number of Accidents','Persons Killed','Total Injured')
        THEN Count ELSE 0 END) AS total_cases
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Cause category`
ORDER BY total_cases DESC;
#BY_SUBCATEGORY
SELECT 
    `Cause Subcategory`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Total number of Accidents'
        THEN Count ELSE 0 END) AS total_accidents,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count ELSE 0 END) AS total_deaths,
    SUM(CASE 
        WHEN `Outcome of Incident`='Total Injured'
        THEN Count ELSE 0 END) AS total_injuries,
    SUM(CASE 
        WHEN `Outcome of Incident` IN 
        ('Total number of Accidents','Persons Killed','Total Injured')
        THEN Count ELSE 0 END) AS total_cases
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Cause Subcategory`
ORDER BY total_cases DESC;
##RISK SCORE ANALYSIS##
#Risk Score = (Deaths × 3) + (Grievous × 2) + (Minor × 1)#
#BY_CITY
SELECT 
    `Million Plus Cities`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count*3 ELSE 0 END)
    +
    SUM(CASE 
        WHEN `Outcome of Incident`='Greviously Injured'
        THEN Count*2 ELSE 0 END)
    +
    SUM(CASE 
        WHEN `Outcome of Incident`='Minor Injury'
        THEN Count ELSE 0 END)
    AS risk_score
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Million Plus Cities`
ORDER BY risk_score DESC;
#BY_CATEGORY
SELECT 
    `Cause category`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count*3 ELSE 0 END)
    +
    SUM(CASE 
        WHEN `Outcome of Incident`='Greviously Injured'
        THEN Count*2 ELSE 0 END)
    +
    SUM(CASE 
        WHEN `Outcome of Incident`='Minor Injury'
        THEN Count ELSE 0 END)
    AS risk_score
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Cause category`
ORDER BY risk_score DESC;
#BY_SUB CATEGORY
SELECT 
    `Cause Subcategory`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count*3 ELSE 0 END)
    +
    SUM(CASE 
        WHEN `Outcome of Incident`='Greviously Injured'
        THEN Count*2 ELSE 0 END)
    +
    SUM(CASE 
        WHEN `Outcome of Incident`='Minor Injury'
        THEN Count ELSE 0 END)
    AS risk_score
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Cause Subcategory`
ORDER BY risk_score DESC;
###DEATH RATIO (FATALITY RATE)###
#Death Ratio = Deaths / Accidents#
#BY_CITY
SELECT 
    `Million Plus Cities`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count ELSE 0 END) 
    /
    SUM(CASE 
        WHEN `Outcome of Incident`='Total number of Accidents'
        THEN Count ELSE 0 END)
    AS death_ratio
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Million Plus Cities`
ORDER BY death_ratio DESC;
#BY_CATEGORY
SELECT 
    `Cause category`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count ELSE 0 END)
    /
    SUM(CASE 
        WHEN `Outcome of Incident`='Total number of Accidents'
        THEN Count ELSE 0 END)
    AS death_ratio
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Cause category`
ORDER BY death_ratio DESC;
#BY_SUBCATEGORY
SELECT 
    `Cause Subcategory`,
    SUM(CASE 
        WHEN `Outcome of Incident`='Persons Killed'
        THEN Count ELSE 0 END)
    /
    SUM(CASE 
        WHEN `Outcome of Incident`='Total number of Accidents'
        THEN Count ELSE 0 END)
    AS death_ratio
FROM `regulatory affairs of road accident data 2020 india`
GROUP BY `Cause Subcategory`
ORDER BY death_ratio DESC;