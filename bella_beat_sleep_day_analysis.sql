SELECT
  id,
  ROUND(AVG(totalminutesasleep) / 60, 1) AS avg_hours_asleep,
  ROUND(AVG(totaltimeinbed) / 60, 1) AS avg_hours_in_bed
FROM `vigilant-sunup-490111-s3.bellabeat_analysis.sleep_day`
GROUP BY id
ORDER BY avg_hours_asleep DESC;
SELECT
  da.id,
  ROUND(AVG(da.totalsteps), 0) AS avg_steps,
  ROUND(AVG(da.sedentaryminutes), 0) AS avg_sedentary_mins,
  ROUND(AVG(sd.totalminutesasleep) / 60, 1) AS avg_hours_asleep
FROM `vigilant-sunup-490111-s3.bellabeat_analysis.daily_activity` da
JOIN `vigilant-sunup-490111-s3.bellabeat_analysis.sleep_day` sd
ON da.id = sd.id
GROUP BY da.id
ORDER BY avg_steps DESC;