-- begin DEMO_ORDER
create table DEMO_ORDER (
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
-- end DEMO_ORDER
-- begin DEMO_ORDER_FOOD_LINKcreate table DEMO_ORDER_FOOD_LINK (
    ORDER_ID varchar(36) not null,
    FOOD_ID varchar(36) not null,
    primary key (ORDER_ID, FOOD_ID)
)^
-- end DEMO_ORDER_FOOD_LINK
-- begin DEMO_MENU_ITEM
create table DEMO_MENU_ITEM (
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
-- end DEMO_MENU_ITEM
