create table PLATFORMSAMPLEPORTAL_ORDERS_FOOD_LINK (
    ORDERS_ID varchar(36) not null,
    FOOD_ID varchar(36) not null,
    primary key (ORDERS_ID, FOOD_ID)
);
