-- begin PLATFORMSAMPLEPORTAL_FOOD
create table PLATFORMSAMPLEPORTAL_FOOD (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    WEIGHT integer,
    PRICE integer,
    --
    primary key (ID)
)^
-- end PLATFORMSAMPLEPORTAL_FOOD

-- begin PLATFORMSAMPLEPORTAL_ORDER
create table PLATFORMSAMPLEPORTAL_ORDER (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36),
    STATUS integer,
    --
    primary key (ID)
)^
-- end PLATFORMSAMPLEPORTAL_ORDER
-- begin PLATFORMSAMPLEPORTAL_ORDER_FOOD_LINK
create table PLATFORMSAMPLEPORTAL_ORDER_FOOD_LINK (
    ORDER_ID varchar(36) not null,
    FOOD_ID varchar(36) not null,
    primary key (ORDER_ID, FOOD_ID)
)^
-- end PLATFORMSAMPLEPORTAL_ORDER_FOOD_LINK
