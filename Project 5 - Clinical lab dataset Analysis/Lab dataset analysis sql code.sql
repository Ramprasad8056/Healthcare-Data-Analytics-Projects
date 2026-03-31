USE BLOOD_PROJECT;
create view blood_query as
SELECT COUNT(*) FROM clinical_lab_dataset;
SELECT * FROM clinical_lab_dataset LIMIT 10;
SELECT 
AVG(age),
AVG(hemoglobin_g_dl),
AVG(glucose_mg_dl),
AVG(cholesterol_mg_dl)
FROM clinical_lab_dataset;
select COUNT(*),
CASE 
    WHEN age BETWEEN 18 AND 30 THEN '18-30'
    WHEN age BETWEEN 31 AND 45 THEN '31-45'
    WHEN age BETWEEN 46 AND 60 THEN '46-60'
    ELSE '60+'
END AS age_group
FROM clinical_lab_dataset
GROUP BY age_group;
select count(*),
case
when Gender = 'Male' then 'MALE'
 when Gender = 'Female' then 'FEMALE'
 else null
 end as GENDER
 from clinical_lab_dataset
group by GENDER;
SELECT COUNT(*) 
FROM clinical_lab_dataset
WHERE hemoglobin_g_dl < 12;
SELECT COUNT(*) 
FROM clinical_lab_dataset
WHERE wbc_count_per_uL > 11000;
SELECT COUNT(*) 
FROM clinical_lab_dataset
WHERE glucose_mg_dl > 140;
CREATE VIEW patient_flags AS
SELECT *,
CASE WHEN hemoglobin_g_dl < 12 THEN 1 ELSE 0 END AS anemia_flag,
CASE WHEN wbc_count_per_uL > 11000 THEN 1 ELSE 0 END AS infection_flag,
CASE WHEN platelets_per_uL < 150000 THEN 1 ELSE 0 END AS thrombocytopenia_flag,
CASE WHEN glucose_mg_dl > 140 THEN 1 ELSE 0 END AS hyperglycemia_flag,
CASE WHEN sodium_mEq_L < 135 THEN 1 ELSE 0 END AS hyponatremia_flag,
CASE WHEN cholesterol_mg_dl > 240 THEN 1 ELSE 0 END AS hyperlipidemia_flag
FROM clinical_lab_dataset;
CREATE VIEW patient_risk_score AS
SELECT *,
(
    anemia_flag * 2 +
    infection_flag * 2 +
    hyperglycemia_flag * 2 +
    thrombocytopenia_flag * 1 +
    hyponatremia_flag * 1 +
    hyperlipidemia_flag * 1
) AS risk_score
FROM patient_flags;
CREATE VIEW patient_risk_category AS
SELECT *,
CASE 
    WHEN risk_score >= 6 THEN 'High Risk'
    WHEN risk_score BETWEEN 3 AND 5 THEN 'Moderate Risk'
    ELSE 'Low Risk'
END AS risk_category
FROM patient_risk_score;
SELECT risk_category, COUNT(*) 
FROM patient_risk_category
GROUP BY risk_category;
SELECT gender, risk_category, COUNT(*) AS total_patients
FROM patient_risk_category
GROUP BY gender, risk_category
ORDER BY gender;
SELECT 
CASE 
    WHEN age BETWEEN 18 AND 30 THEN '18-30'
    WHEN age BETWEEN 31 AND 45 THEN '31-45'
    WHEN age BETWEEN 46 AND 60 THEN '46-60'
    ELSE '60+'
END AS age_group,
risk_category,
COUNT(*) AS total
FROM patient_risk_category
GROUP BY age_group, risk_category
ORDER BY age_group;
SELECT 
SUM(anemia_flag) AS anemia_cases,
SUM(infection_flag) AS infection_cases,
SUM(thrombocytopenia_flag) AS platelet_cases,
SUM(hyperglycemia_flag) AS hyperglycemia_cases,
SUM(hyponatremia_flag) AS hyponatremia_cases,
SUM(hyperlipidemia_flag) AS hyperlipidemia_cases
FROM patient_flags;
SELECT 
AVG(age),
AVG(glucose_mg_dl),
AVG(cholesterol_mg_dl),
AVG(hemoglobin_g_dl)
FROM patient_risk_category
WHERE risk_category = 'High Risk';
SELECT 
    CASE 
        WHEN risk_score >= 6 THEN 'High Risk'
        WHEN risk_score >= 3 AND risk_score < 6 THEN 'Moderate Risk'
        ELSE 'Low Risk'
    END AS risk_category,
    COUNT(*) AS patient_count
FROM patient_risk_score
GROUP BY risk_category;