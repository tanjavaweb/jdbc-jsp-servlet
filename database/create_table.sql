use fruitsql;
CREATE TABLE admin (
	id bigint NOT NULL PRIMARY KEY auto_increment,
    username varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    createddate timestamp NULL,
    modifieddate timestamp NUll,
    createdby varchar(255) NULL,
    modifiedby varchar(255) NULL
);

CREATE TABLE user (
	id bigint NOT NULL PRIMARY KEY auto_increment,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    roleid bigint NOT NULL,
    createddate timestamp NULL,
    modifieddate timestamp NUll,
    createdby varchar(255) NULL,
    modifiedby varchar(255) NULL
);

create table role(
	id bigint primary key not null auto_increment,
	name varchar(255) not null,
	code varchar(255) not null,
	createddate timestamp null,
	modifieddate timestamp null,
	createdby varchar(255) null,
	modifiedby varchar(255) null
);
alter table user add constraint fk_user_role foreign key(roleid) references role (id);

CREATE TABLE catalog (
	id bigint NOT NULL PRIMARY KEY auto_increment,
    name varchar(255) NOT NULL,
    parent_id int NOT NULL,
    sort_order tinyint(4) NOT NULL,
    createddate timestamp NULL,
    modifieddate timestamp NUll,
    createdby varchar(255) NULL,
    modifiedby varchar(255) NULL
);


CREATE TABLE product (
	id bigint NOT NULL PRIMARY KEY auto_increment,
    catalog_id bigint NOT NULL,
    name varchar(255) NOT NULL,
    price int NOT NULL,
    content varchar(255) NOT NULL,
    discount int NOT NULL,
    img_link varchar(255) NOT NULL,
    img_list varchar(255) NOT NULL,
    createddate timestamp NULL,
    modifieddate timestamp NUll,
    createdby varchar(255) NULL,
    modifiedby varchar(255) NULL
);
ALTER TABLE product ADD CONSTRAINT fk_product_catalog FOREIGN KEY (catalog_id) REFERENCEs catalog(id);

CREATE TABLE transaction (
	id bigint NOT NULL PRIMARY KEY auto_increment,
    status tinyint(4) NOT NULL,
    user_id bigint NOT NULL,
    user_name varchar(255) NOT NULL,
    user_email varchar(255),
    amout int NOT NULL,
    payment varchar(255),
    payment_info varchar(255) NOT NULL,
    message varchar(255) NOT NULL,
    createddate timestamp NULL,
    modifieddate timestamp NUll,
    createdby varchar(255) NULL,
    modifiedby varchar(255) NULL
);

ALTER TABLE transaction ADD CONSTRAINT fk_transaction_user FOREIGN KEY (user_id) REFERENCEs user(id);
 
CREATE TABLE order_p (
	id bigint NOT NULL PRIMARY KEY auto_increment,
	transaction_id int NOT NULL,
    product_id bigint NOT NULL,
    quantity int NOT NULL,
    amount int NOT NULL,
    data varchar(255) NOT NULL,
    status tinyint NOT NULL,
    createddate timestamp NULL,
    modifieddate timestamp NUll,
    createdby varchar(255) NULL,
    modifiedby varchar(255) NULL
);

ALTER TABLE order_p ADD CONSTRAINT fk_orderP_product FOREIGN KEY (product_id) REFERENCEs product(id);

