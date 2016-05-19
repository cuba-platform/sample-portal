insert into SEC_ROLE
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('be155ab8-c2bf-848d-26bc-3e8d2c584671', '2016-04-26 12:29:19', 'admin', 2, '2016-04-27 18:38:48', 'admin', null, null, 'CustomersAllow', 'CustomersAllow', null, 0, null);

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1a350352-ef17-154b-9288-b2b78c75c231', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 30, 'demo$MenuItem:version', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ca7b9f92-1b78-68bc-fea2-2362f61adcf5', '2016-05-19 16:12:33', 'admin', 1, '2016-05-19 16:12:33', null, null, null, 20, 'demo$OrderItem:read', 1, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ba07e01d-124e-effb-2aa3-1e92e7cb93b6', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 30, 'demo$MenuItem:updatedBy', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3d9993a1-24fc-c8ef-c867-b0708b285db0', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 10, 'help', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('8127a75d-14f2-bc2b-99d8-0c9c3b63abc1', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 10, 'application', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d9943340-5b5e-7ae0-9e2a-c9ebbc654d06', '2016-04-27 18:43:47', 'admin', 1, '2016-04-27 18:43:47', null, null, null, 40, 'cuba.gui.loginToClient', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('e00ced1c-8fd9-d486-7c10-98aa8d2073fd', '2016-04-27 18:39:01', 'admin', 1, '2016-04-27 18:39:01', null, null, null, 40, 'cuba.restApi.enabled', 1, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('6209684b-8baa-148f-54f7-3b1d5890ced7', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 20, 'demo$Order:update', 1, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('35234f72-0003-66db-1eb8-96382500f0e5', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 20, 'demo$Order:create', 1, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('630d12fa-66d5-11fb-4e59-0fadee7e087f', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 30, 'demo$MenuItem:createTs', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f4d1b514-7102-5eac-8431-5c6db0a90110', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 10, 'administration', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('905f097c-f46d-51a4-2e98-2d3ef21ee4a2', '2016-05-19 16:12:33', 'admin', 1, '2016-05-19 16:12:33', null, null, null, 20, 'demo$OrderItem:create', 1, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('daf1ba8f-1f91-9498-b31e-d82267271e3c', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 30, 'demo$MenuItem:deleteTs', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('35275b3d-3906-28e8-a90c-0613f41fc845', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 30, 'demo$MenuItem:updateTs', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('6754d16c-d37a-9c9b-a889-d2cd80dae0bd', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 20, 'demo$Order:read', 1, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b182d849-3e25-b23c-58fa-80a520572f27', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 30, 'demo$MenuItem:deletedBy', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('41e259b2-2595-3909-6484-130247bddd69', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 20, 'demo$MenuItem:read', 1, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_PERMISSION
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d9c74553-e3c9-8ec2-ca12-60579ee8c58d', '2016-04-26 12:29:19', 'admin', 1, '2016-04-26 12:29:19', null, null, null, 30, 'demo$MenuItem:createdBy', 0, 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_ROLE
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('dc6037e5-6ecb-7a0a-a8d4-de869e56bdbc', '2016-04-27 18:39:32', 'admin', 1, '2016-04-27 18:39:32', null, null, null, 'CustomersDeny', 'CustomersDeny', null, 30, null);

insert into SEC_GROUP
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('ea15ca02-7bb2-7225-237c-7f3d5921dcc8', '2016-04-26 11:50:48', 'admin', 1, '2016-04-26 11:50:48', null, null, null, 'Customer', null);

insert into SEC_CONSTRAINT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('c12f52e4-d0f7-2ed9-ff68-865779643a0a', '2016-04-26 12:01:11', 'admin', 1, '2016-04-26 12:01:11', null, null, null, 'db', 'read', null, 'demo$Order', null, '{E}.createdBy = :session$userLogin', null, '<?xml version="1.0" encoding="UTF-8"?>

<filter>
  <and>
    <c name="createdBy" class="java.lang.String" operatorType="EQUAL" width="1" type="PROPERTY"><![CDATA[queryEntity.createdBy = :component$filterWithoutId.createdBy54521]]>
      <param name="component$filterWithoutId.createdBy54521" javaClass="java.lang.String">NULL</param>
    </c>
  </and>
</filter>
', true, 'ea15ca02-7bb2-7225-237c-7f3d5921dcc8');

insert into SEC_USER
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('1c1fb6a7-4629-1999-b891-2b869cbdc193', '2016-04-26 11:54:48', 'admin', 1, '2016-04-26 11:54:48', null, null, null, 'demo', 'demo', 'ac2f77a70503dc1f7b15dd312cd67e559b39226d', null, null, null, null, null, null, 'en', null, null, true, false, 'ea15ca02-7bb2-7225-237c-7f3d5921dcc8', null);

insert into SEC_USER_ROLE
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('9efc1fe6-8c34-aa2f-283c-524c6ebd029e', null, null, null, null, null, null, null, '1c1fb6a7-4629-1999-b891-2b869cbdc193', 'be155ab8-c2bf-848d-26bc-3e8d2c584671');

insert into SEC_USER_ROLE
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('9b048c4f-f111-b77e-43e0-3e770beb2fbc', null, null, null, null, null, null, null, '1c1fb6a7-4629-1999-b891-2b869cbdc193', 'dc6037e5-6ecb-7a0a-a8d4-de869e56bdbc');

insert into DEMO_MENU_ITEM
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, WEIGHT, PRICE)
values ('a28c65d4-a61b-7c64-8386-5f88d3c244a9', '2016-04-26 12:30:54', 'admin', 2, '2016-04-26 12:50:03', null, null, null, 'Double NPE', 200, 5);

insert into DEMO_MENU_ITEM
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, WEIGHT, PRICE)
values ('f30bb5e6-29e4-4cf1-8d1a-db1a94ed2084', '2016-04-26 12:50:35', 'admin', 1, '2016-04-26 12:50:35', null, null, null, 'Long Java', 250, 3);

insert into DEMO_MENU_ITEM
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, WEIGHT, PRICE)
values ('7eacff1e-0879-ca8b-6407-b0de766aba67', '2016-04-26 12:50:59', 'admin', 1, '2016-04-26 12:50:59', null, null, null, 'LeBoorondoque Fries', 350, 5);

insert into DEMO_MENU_ITEM
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, WEIGHT, PRICE)
values ('46cf913b-a6b7-e25f-7aee-2cdfc5bc8412', '2016-04-26 12:51:26', 'admin', 1, '2016-04-26 12:51:26', null, null, null, 'Bug Bacon', 350, 4);

insert into DEMO_MENU_ITEM
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, WEIGHT, PRICE)
values ('4049628a-4cc7-b48d-10ed-fed4f4801121', '2016-04-26 12:51:40', 'admin', 1, '2016-04-26 12:51:40', null, null, null, 'Chicken Deploy', 250, 3);
