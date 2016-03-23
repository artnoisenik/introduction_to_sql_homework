DROP DATABASE IF EXISTS url_shortener_phil_skaggs;
CREATE DATABASE url_shortener_phil_skaggs;
\c url_shortener_phil_skaggs;

CREATE TABLE urls(
  id SERIAL PRIMARY KEY,
  original_url VARCHAR(100) NOT NULL,
  count INT DEFAULT 0
);

INSERT INTO urls (original_url,count)
VALUES ('http://www.boingboing.net',12),
('http://www.baconbeercan.com/',23),
('http://www.hairpieceherpes.com/',99),
('http://www.whattoexpect.com/forums/postpartum-depression.html', 1),
('https://www.okcupid.com/',9);

SELECT * FROM urls;
SELECT original_url FROM urls;
SELECT * FROM urls WHERE id=2;
SELECT * FROM urls WHERE original_url='http://www.baconbeercan.com/';
UPDATE urls SET count=101 WHERE id=4;
DELETE FROM urls WHERE original_url = 'http://www.baconbeercan.com/';
