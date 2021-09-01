CREATE TABLE nba (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    clube varchar(100) NOT NULL,
    arena varchar(255) NOT NULL,
    latitude varchar(255) NOT NULL,
    longitude varchar(255) NOT NULL,
    imagem varchar(255) NOT NULL
);

INSERT INTO  nba  (clube, arena, latitude, longitude, imagem)
VALUES
  ('ATLANTA HAWKS', 'State Farm Arena', '33.7572935', '-84.3985131', 'hawks'),
  ('BOSTON CELTICS', 'TD Garden', '42.366198', '-71.062146', 'celtics'),
  ('BROOKLYN NETS', 'Barclays Center', '40.6837282', '-73.9781808', 'nets'),
  ('CHARLOTTE HORNETS', 'Spectrum Center', '35.2251563', '-80.8415798', 'hornets'),
  ('CHICAGO BULLS', 'United Center', '41.8806948', '-87.6763646', 'bulls'),
  ('CLEVELAND CAVALIERS', 'Quicken Loans Arena', '41.4965514', '-81.6902461', 'cavaliers'),
  ('DALLAS MAVERICKS', 'American Airlines Center', '32.7903908', '-96.8190094', 'mavs'),
  ('DENVER NUGGETS', 'Ball Arena', '39.7486606', '-105.0097915', 'nuggets'),
  ('DETROIT PISTONS', 'Little Caesars Arena', '42.3411065', '-83.057456', 'pistons'),
  ('GOLDEN STATE WARRIORS', 'Chase Center', '37.7680508', '-122.3899037', 'warriors'),
  ('HOUSTON ROCKETS', 'Toyota Center', '29.750765', '-95.3642892', 'rockets'),
  ('INDIANA PACERS', 'Bankers Life Fieldhouse', '39.7640475', '-86.1577254', 'pacers'),
  ('LOS ANGELES CLIPPERS', 'Staples Center', '33.7572935', '-118.2694428', 'clippers'),
  ('LOS ANGELES LAKERS', 'Staples Center', '33.7572935', '-118.2694428', 'lakers'),
  ('MEMPHIS GRIZZLIES', 'FedExForum', '35.1381462', '-90.0527751', 'grizzles'),
  ('MIAMI HEAT', 'AmericanAirlines Arena', '25.7814062', '-80.1891577', 'heat'),
  ('MILWAUKEE BUCKS', 'Fiserv Forum', '43.0450841', '-87.9195749', 'bucks'),
  ('MINNESOTA TIMBERWOLVES', 'Target Center', '44.9794671', '-93.2782834', 'timberwolves'),
  ('NEW ORLEANS PELICANS', 'Smoothie King Center', '29.9490397', '-90.0842455', 'pelicans'),
  ('NEW YORK KNICKS', 'Madison Square Garden', '40.7463549', '-73.9933644', 'knicks'),
  ('OKLAHOMA CITY THUNDER', 'Chesapeake Energy Arena', '35.463429', '-97.5173025', 'thunder'),
  ('ORLANDO MAGIC', 'Amway Center', '28.5392261', '-81.3860422', 'magic'),
  ('PHILADELPHIA 76ERS', 'Wells Fargo Center', '39.9012015', '-75.189489', '76ers'),
  ('PHOENIX SUNS', 'Talking Stick Resort Arena', '33.4457415', '-112.073389', 'suns'),
  ('PORTLAND TRAIL BLAZERS', 'Moda Center', '45.5315688', '-122.669031', 'blazers'),
  ('SACRAMENTO KINGS', 'Golden 1 Center', '38.5802087', '-121.5018489', 'kings'),
  ('SAN ANTONIO SPURS', 'AT&T Center', '29.4270248', '-98.4396539', 'spurs'),
  ('TORONTO RAPTORS', 'Air Canada Centre', '43.64347', '-79.3812876', 'raptors'),
  ('UTAH JAZZ', 'EnergySolutions Arena', '40.7692359', '-111.9038243', 'jazz'),
  ('WASHINGTON WIZARDS', 'Capital One Arena', '38.8981717', '-77.0230455', 'wizards');
