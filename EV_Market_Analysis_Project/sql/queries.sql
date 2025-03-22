-- SQL queries for retrieving and analyzing data from the electric vehicle sales database

-- Query to get total electric vehicles sold by maker
SELECT 
    maker, 
    SUM(electric_vehicles_sold) AS total_electric_vehicles_sold
FROM 
    electric_vehicle_sales_by_makers
GROUP BY 
    maker
ORDER BY 
    total_electric_vehicles_sold DESC;

-- Query to get total electric vehicles sold by state
SELECT 
    state, 
    SUM(electric_vehicles_sold) AS total_electric_vehicles_sold
FROM 
    electric_vehicle_sales_by_state
GROUP BY 
    state
ORDER BY 
    total_electric_vehicles_sold DESC;

-- Query to get monthly sales trends for electric vehicles by maker
SELECT 
    d.year, 
    d.month, 
    m.maker, 
    SUM(m.electric_vehicles_sold) AS monthly_electric_vehicles_sold
FROM 
    electric_vehicle_sales_by_makers m
JOIN 
    dim_date d ON m.date_id = d.date_id
GROUP BY 
    d.year, d.month, m.maker
ORDER BY 
    d.year, d.month, m.maker;

-- Query to get monthly sales trends for electric vehicles by state
SELECT 
    d.year, 
    d.month, 
    s.state, 
    SUM(s.electric_vehicles_sold) AS monthly_electric_vehicles_sold
FROM 
    electric_vehicle_sales_by_state s
JOIN 
    dim_date d ON s.date_id = d.date_id
GROUP BY 
    d.year, d.month, s.state
ORDER BY 
    d.year, d.month, s.state;

-- Query to get the average number of electric vehicles sold per month by maker
SELECT 
    maker, 
    AVG(electric_vehicles_sold) AS average_electric_vehicles_sold
FROM 
    electric_vehicle_sales_by_makers
GROUP BY 
    maker
ORDER BY 
    average_electric_vehicles_sold DESC;