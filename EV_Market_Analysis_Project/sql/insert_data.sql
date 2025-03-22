-- Insert data into dim_date table
COPY dim_date (date_id, date, month, year, day_of_week)
FROM 'data/dim_date.csv'
DELIMITER ','
CSV HEADER;

-- Insert data into electric_vehicle_sales_by_makers table
COPY electric_vehicle_sales_by_makers (sales_id, maker, vehicle_category, electric_vehicles_sold, total_vehicles_sold, date_id)
FROM 'data/electric_vehicle_sales_by_makers.csv'
DELIMITER ','
CSV HEADER;

-- Insert data into electric_vehicle_sales_by_state table
COPY electric_vehicle_sales_by_state (sales_id, state, vehicle_category, electric_vehicles_sold, total_vehicles_sold, date_id)
FROM 'data/electric_vehicle_sales_by_state.csv'
DELIMITER ','
CSV HEADER;