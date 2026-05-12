SELECT
  EXTRACT(HOUR FROM activityhour) AS hour_of_day,
  ROUND(AVG(steptotal), 0) AS avg_steps
FROM `vigilant-sunup-490111-s3.bellabeat_analysis.hourly_steps`
GROUP BY hour_of_day
ORDER BY hour_of_day ASC;