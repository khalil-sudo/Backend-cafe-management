-- Active: 1666002598262@@127.0.0.1@3306@cafenodejs

CREATE Table
    user(
        id int primary key AUTO_INCREMENT,
        name VARCHAR(250),
        contactNumber VARCHAR(20),
        email VARCHAR(50),
        password VARCHAR(250),
        status VARCHAR(20),
        role VARCHAR(20),
        UNIQUE (email)
    );

INSERT into
    `user`(
        name,
        contactNumber,
        email,
        password,
        status,
        role
    )
values (
        'Admin',
        '1234567890',
        'admin@gmail.com',
        'password',
        'true',
        'admin'
    );

create table
    category(
        id int NOT NULL AUTO_INCREMENT,
        name varchar(255) NOT NULL,
        PRIMARY KEY(id)
    );

create table
    product(
        id int not null AUTO_INCREMENT,
        name VARCHAR(255) not NULL,
        categoryId INTEGER not NULL,
        description VARCHAR(255),
        price INTEGER,
        status VARCHAR(20),
        PRIMARY KEY(id)
    );

create table
    bill(
        id int NOT NULL AUTO_INCREMENT,
        uuid VARCHAR(200) NOT NULL,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        contactNumber VARCHAR(20) NOT NULL,
        paymentMethod VARCHAR(50) NOT NULL,
        total int NOT NULL,
        productDetails JSON DEFAULT NULL,
        createdBy VARCHAR(255) not NULL,
        PRIMARY KEY(id)
    );