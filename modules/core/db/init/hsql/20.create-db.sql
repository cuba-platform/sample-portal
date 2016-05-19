-- begin DEMO_ORDERalter table DEMO_ORDER add constraint FK_DEMO_ORDER_USER_ID foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_DEMO_ORDER_USER on DEMO_ORDER (USER_ID)^
-- end DEMO_ORDER

-- begin DEMO_ORDER_ITEM
alter table DEMO_ORDER_ITEM add constraint FK_DEMO_ORDER_ITEM_MENU_ITEM_ID foreign key (MENU_ITEM_ID) references DEMO_MENU_ITEM(ID)^
alter table DEMO_ORDER_ITEM add constraint FK_DEMO_ORDER_ITEM_ORDER_ID foreign key (ORDER_ID) references DEMO_ORDER(ID)^
create index IDX_DEMO_ORDER_ITEM_ORDER on DEMO_ORDER_ITEM (ORDER_ID)^
create index IDX_DEMO_ORDER_ITEM_MENU_ITEM on DEMO_ORDER_ITEM (MENU_ITEM_ID)^
-- end DEMO_ORDER_ITEM
