
--show data_directory;



COPY contacts FROM 'C:/Program Files/PostgreSQL/14/data/contacts.csv' DELIMITER ',' CSV HEADER;
COPY category FROM 'C:/Program Files/PostgreSQL/14/data/category.csv' DELIMITER ',' CSV HEADER;
COPY subcategory FROM 'C:/Program Files/PostgreSQL/14/data/subcategory.csv' DELIMITER ',' CSV HEADER;
COPY campaign FROM 'C:/Program Files/PostgreSQL/14/data/campaign.csv' DELIMITER ',' CSV HEADER;


select * from contacts;
-- select count(1) from contacts;

select * from category;
-- select count(1) from category;

select * from subcategory;
-- select count(1) from subcategory;


select * from campaign;
-- select count(1) from campaign;








