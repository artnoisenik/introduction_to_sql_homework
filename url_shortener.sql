DROP DATABASE IF EXISTS url_shortener_phil_skaggs;
CREATE DATABASE url_shortener_phil_skaggs;
\c url_shortener_phil_skaggs;

CREATE TABLE urls(
  id serial,
  original_url varchar(100),
  count int
);
