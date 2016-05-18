-- begin DEMO_ORDER
alter table DEMO_ORDER add constraint FK_DEMO_ORDER_USER_ID foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_DEMO_ORDER_USER on DEMO_ORDER (USER_ID)^
-- end DEMO_ORDER
-- begin DEMO_ORDER_FOOD_LINK
alter table DEMO_ORDER_FOOD_LINK add constraint FK_DOFL_ORDER foreign key (ORDER_ID) references DEMO_ORDER(ID)^
alter table DEMO_ORDER_FOOD_LINK add constraint FK_DOFL_MENU_ITEM foreign key (MENU_ITEM_ID) references DEMO_MENU_ITEM(ID)^-- end DEMO_ORDER_FOOD_LINK
