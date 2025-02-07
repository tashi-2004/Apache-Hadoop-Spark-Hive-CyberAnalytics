-- Hive Queries

--1. Calculate Total Connections by Attack Category
select attack_cat, count(*) as total_connections from mytable group by attack_cat order by total_connections desc;


--2. Group by Protocol (proto)
select proto, count(*) as protocol_count from mytable group by proto order by protocol_count desc;


--3. Filter Rows by Destination Port (dsport)
select srcip, dstip, dsport, proto, state from mytable where dsport > 50000 order by dsport asc;

--4. Calculate Average Duration (dur) by State
select state, avg(dur) as avg_duration from mytable group by state order by avg_duration desc;

--5. Find Top 10 Records with Highest Source Bytes (sbytes)
select top 10 srcip, dstip, sbytes, dbytes, proto from mytable order by sbytes desc;