DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS descriptions CASCADE;
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS img_urls CASCADE;
DROP TABLE IF EXISTS promotions CASCADE;
DROP TABLE IF EXISTS specifications_dimensions CASCADE;
DROP TABLE IF EXISTS specifications_details CASCADE;
DROP TABLE IF EXISTS options CASCADE;
DROP TABLE IF EXISTS store_online CASCADE;
DROP TABLE IF EXISTS store_local CASCADE;
DROP TABLE IF EXISTS warranty_certifications CASCADE;
DROP TABLE IF EXISTS customer_questions CASCADE;
DROP TABLE IF EXISTS review_images CASCADE;
DROP TABLE IF EXISTS productDetails_images;

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR,
    manufacturer VARCHAR,
    price NUMERIC(10,2),
    has_warranty BOOLEAN
);

CREATE TABLE descriptions (
    id SERIAL PRIMARY KEY,
    fact VARCHAR,
    product_id INTEGER REFERENCES products(id)
);

CREATE TABLE customer_questions (
  id SERIAL PRIMARY KEY, 
  product_id INTEGER REFERENCES products(id),
  question_content VARCHAR,
  user_name VARCHAR,
  question_date DATE,
  response_user_name VARCHAR,
  response_content VARCHAR,
  response_date DATE
);

CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  product_id INTEGER REFERENCES products(id),
  content VARCHAR,
  reviewer_name VARCHAR,
  rating INT CHECK (rating >= 1 AND rating <=5),
  title TEXT,
  review_date DATE
);

CREATE TABLE img_urls (
  id SERIAL PRIMARY KEY,
  product_id INTEGER REFERENCES products(id),
  img_url VARCHAR
);

CREATE TABLE specifications_details (
    id SERIAL PRIMARY KEY, 
    battery_amp_hours INT,
    blows_per_minute INT,
    color_family VARCHAR,
    cordless_tool_type VARCHAR,
    drill_driver_type VARCHAR,
    included TEXT,
    motor_type TEXT,
    power_tool_features TEXT,
    returnable TEXT,
    torque INT,
    battery_motor_type VARCHAR,
    other_included VARCHAR,
    condition VARCHAR,
    is_cordless VARCHAR,
    drive_size VARCHAR,
    max_speed_rpm VARCHAR,
    num_batteries_included INT,
    product_weight VARCHAR,
    Tools_Product_Type VARCHAR,
    voltage  VARCHAR,
    product_id INTEGER REFERENCES products(id)
);

CREATE TABLE promotions (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    price_original NUMERIC(10,2),
    price_reduced NUMERIC(10,2)
);

CREATE TABLE options (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    option_content VARCHAR,
    option_pic_url VARCHAR
);

CREATE TABLE store_online (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    inventory INT,
    days_to_ship INT
);

CREATE TABLE store_local (
    id SERIAL PRIMARY KEY,
    zipcode INT,
    city_name VARCHAR,
    product_id INTEGER REFERENCES products(id),
    inventory INT
);

CREATE TABLE specifications_dimensions (
    id SERIAL PRIMARY KEY, 
    product_id INTEGER REFERENCES products(id),
    depth INT,
    depth_unit_of_measure VARCHAR,
    width INT,
    width_unit_of_measure VARCHAR,
    height INT,
    height_unit_of_measure VARCHAR
);

CREATE TABLE warranty_certifications (
  id SERIAL PRIMARY KEY, 
  product_id INTEGER REFERENCES products(id),
  certifications_listings VARCHAR,
  manufacturer_warranty VARCHAR
);

CREATE TABLE review_images (
  id SERIAL PRIMARY KEY,
  review_id INTEGER REFERENCES reviews(id),
  img_url VARCHAR
);

CREATE TABLE productDetails_images (
  id SERIAL PRIMARY KEY,
  imageSrc VARCHAR,
  altText VARCHAR,
  title VARCHAR,
  detail TEXT,
  product_id INTEGER REFERENCES products(id)
);