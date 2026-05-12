SELECT
    id,
    AVG(totalsteps) AS avg_steps,
    AVG(calories) AS avg_calories,
    AVG(sedentaryminutes) AS avg_sedentary_minutes
FROM `vigilant-sunup-490111-s3.bellabeat_analysis.daily_activity`
GROUP BY id;

SELECT
  day_of_week,
  ROUND(AVG(totalsteps), 0) AS avg_steps
FROM `vigilant-sunup-490111-s3.bellabeat_analysis.daily_activity`
GROUP BY day_of_week
ORDER BY avg_steps DESC;

SELECT
  id,
  COUNT(*) AS total_days,
  COUNTIF(totalsteps >= 10000) AS days_goal_met,
  ROUND(COUNTIF(totalsteps >= 10000) / COUNT(*) * 100, 0) AS pct_goal_met
FROM `vigilant-sunup-490111-s3.bellabeat_analysis.daily_activity`
GROUP BY id
ORDER BY pct_goal_met DESC;

SELECT
  id,
  ROUND(AVG(totalsteps), 0) AS avg_steps,
  CASE
    WHEN AVG(totalsteps) >= 10000 THEN 'Very Active'
    WHEN AVG(totalsteps) >= 7500 THEN 'Fairly Active'
    WHEN AVG(totalsteps) >= 5000 THEN 'Lightly Active'
    ELSE 'Sedentary'
  END AS activity_category
FROM `vigilant-sunup-490111-s3.bellabeat_analysis.daily_activity`
GROUP BY id
ORDER BY avg_steps DESC;