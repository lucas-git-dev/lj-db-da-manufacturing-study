select * from production;
select shift as linha, AVG(output_units) as media_prod from production group by shift;
select date, downtime_minutes from production order by downtime_minutes desc limit 5;
select p.date, p.output_units, p.machine_utilization, q.defects_count, q.defect_rate from production p join quality q on p.date = q.date;