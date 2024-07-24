create database if not exists store_management;
use store_management;

drop table if exists users_products;
drop table if exists products;
drop table if exists users;

create table products
(
    id            integer PRIMARY KEY AUTO_INCREMENT,
    name          varchar(255),
    last_name     varchar(255),
    price         integer,
    stock         integer,
    inserted_date timestamp,
    updated_date  timestamp
);
create table users
(
    id            integer PRIMARY KEY AUTO_INCREMENT,
    name          varchar(255),
    email         varchar(255)
);
create table users_products
(
    id            integer PRIMARY KEY AUTO_INCREMENT,
    product_id    integer not null,
    user_id       integer not null,
    CONSTRAINT FK_Product FOREIGN KEY (product_id) REFERENCES products(id),
    CONSTRAINT FK_User FOREIGN KEY (user_id) REFERENCES users(id)
);