CREATE TABLE dim_date (
    date_id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL,
    day_of_week INTEGER NOT NULL
);

CREATE TABLE electric_vehicle_sales_by_makers (
    sales_id SERIAL PRIMARY KEY,
    maker TEXT NOT NULL,
    vehicle_category TEXT NOT NULL,
    electric_vehicles_sold INTEGER NOT NULL,
    total_vehicles_sold INTEGER NOT NULL,
    date_id INTEGER REFERENCES dim_date(date_id)
);

CREATE TABLE electric_vehicle_sales_by_state (
    sales_id SERIAL PRIMARY KEY,
    state TEXT NOT NULL,
    vehicle_category TEXT NOT NULL,
    electric_vehicles_sold INTEGER NOT NULL,
    total_vehicles_sold INTEGER NOT NULL,
    date_id INTEGER REFERENCES dim_date(date_id)
);