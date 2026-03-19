#CREATE DATABASE
create database ocd_project;
use ocd_project;
#sample checks
SELECT COUNT(*) FROM ocd_patients;
SELECT * FROM ocd_patients LIMIT 10;
#BASIC EXPLORATION
#Total patients
SELECT COUNT(*) AS total_patients FROM ocd_patients;
#Gender distribution
SELECT gender, COUNT(*) AS count
FROM ocd_patients
GROUP BY gender;
#Marital status
SELECT `Marital Status`, COUNT(*) AS total
FROM ocd_patients
GROUP BY `Marital Status`
ORDER BY total DESC;
#Average age
SELECT ROUND(AVG(age),2) AS avg_age
FROM ocd_patients;
SELECT MIN(Age) AS youngest,
       MAX(Age) AS oldest
FROM ocd_patients;
#Ethinicity distribution
SELECT ethnicity, COUNT(*) AS count
FROM ocd_patients
GROUP BY ethnicity;
#Average Severity (Obsessions + Compulsions)
SELECT 
ROUND(AVG(`Y-BOCS Score (Obsessions)`),2) AS avg_obsession,
ROUND(AVG(`Y-BOCS Score (Compulsions)`),2) AS avg_compulsion
FROM ocd_patients;
#Average duration of symptoms
SELECT ROUND(AVG('Duration of Symptoms (months)'),2) AS avg_duration
FROM ocd_patients;
#Medication usage
SELECT `Medications`, COUNT(*) AS total
FROM ocd_patients
GROUP BY `Medications`
ORDER BY total DESC;
#Depression and anxiety
SELECT `Depression Diagnosis`, COUNT(*) AS total
FROM ocd_patients
GROUP BY `Depression Diagnosis`;
SELECT `Anxiety Diagnosis`, COUNT(*) AS total
FROM ocd_patients
GROUP BY `Anxiety Diagnosis`;
SELECT 
    `Depression Diagnosis`,
    `Anxiety Diagnosis`,
    COUNT(*) AS total
FROM ocd_patients
GROUP BY `Depression Diagnosis`, `Anxiety Diagnosis`;
#CREATE POWERBI DATASET
CREATE OR REPLACE VIEW ocd_powerbi_ready AS
SELECT
    `Patient ID` AS patient_id,
    Age,
    Gender,
    Ethnicity,
    `Marital Status` AS marital_status,
    `Education Level` AS education_level,
    `Duration of Symptoms (months)` AS duration_months,
    `Y-BOCS Score (Obsessions)` AS ybocs_obsessions,
    `Y-BOCS Score (Compulsions)` AS ybocs_compulsions,
    (`Y-BOCS Score (Obsessions)` + 
     `Y-BOCS Score (Compulsions)`) AS total_severity,
    `Depression Diagnosis` AS depression_diagnosis,
    `Anxiety Diagnosis` AS anxiety_diagnosis,
    `Medications`
FROM ocd_patients;
SELECT * FROM ocd_powerbi_ready;