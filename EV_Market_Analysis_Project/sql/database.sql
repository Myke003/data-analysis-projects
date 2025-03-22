CREATE TABLE IF NOT EXISTS dim_date(
  date_id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  fiscal_year INTEGER NOT NULL,
  quarter VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS maker_sales(
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  vehicle_category VARCHAR(255),
  maker VARCHAR(255),
  electric_vehicles_sold INT NOT NULL
);

CREATE TABLE IF NOT EXISTS state_sales(
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  state VARCHAR(255),
  vehicle_category VARCHAR(255) NOT NULL,
  electric_vehicles_sold INT NOT NULL,
  total_vehicles_sold INT NOT NULL
);


/* I've got to use the psql commandline because my neon.tech user doesn't have permission for write or read on my computer.


\copy dim_date(date, fiscal_year, quarter) FROM '"your_absolute_path"/dim_date.csv' DELIMITER ',' CSV HEADER;

\copy maker_sales(date, vehicle_category, maker, electric_vehicles_sold) FROM 'your_absolute_path\electric_vehicle_sales_by_makers.csv' DELIMITER ',' CSV HEADER;

\copy state_sales(date, state, vehicle_category, electric_vehicles_sold, total_vehicles_sold) FROM 'your_absolute_path\electric_vehicle_sales_by_state.csv' DELIMITER ',' CSV HEADER;

*/