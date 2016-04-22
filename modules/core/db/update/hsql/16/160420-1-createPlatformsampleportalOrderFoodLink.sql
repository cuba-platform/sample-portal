create table PLATFORMSAMPLEPORTAL_ORDER_FOOD_LINK (
    ORDER_ID varchar(36) not null,
    FOOD_ID varchar(36) not null,
    primary key (ORDER_ID, FOOD_ID)
);
