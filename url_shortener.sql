DROP DATABASE IF EXISTS url_shortener_phil_skaggs;
CREATE DATABASE url_shortener_phil_skaggs;
\c url_shortener_phil_skaggs;

CREATE TABLE urls(
  id SERIAL PRIMARY KEY,
  original_url VARCHAR(100) NOT NULL,
  count INT,
);
