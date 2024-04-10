
DROP TABLE IF EXISTS campaign;

DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category (
    category_id varchar(15) PRIMARY KEY,
    category VARCHAR(255)
);
 



CREATE TABLE subcategory (
    subcategory_id varchar(15) PRIMARY KEY,
    subcategory VARCHAR(255)
);





CREATE TABLE contacts (
    Contact_id int PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);




CREATE TABLE campaign(
	cf_id int,
	contact_id int,
	company_name varchar(255),
	description varchar(255),
	goal decimal,
	pledged decimal,
	outcome varchar(15),
	backers_count int,
	country varchar(2),
	currency varchar(3),
	launched_date timestamp,
	end_date timestamp,
	category_subcategory varchar(255),
	category_id varchar(15),
	subcategory_id varchar(15),
	PRIMARY KEY (contact_id),
	constraint fk_category_id
		foreign key (category_id)
			references category(category_id),
	constraint fk_subcategory_id
		foreign key (subcategory_id)
			references subcategory(subcategory_id),
	constraint fk_contact_id
		foreign key (contact_id)
			references contacts(contact_id)

);





