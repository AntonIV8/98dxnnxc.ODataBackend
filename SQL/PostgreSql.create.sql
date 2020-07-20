




CREATE TABLE user_resource_spec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 service_id UUID NOT NULL,

 service_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE contragent (

 primaryKey UUID NOT NULL,

 contragent VARCHAR(255) NOT NULL,

 descr TEXT NULL,

 official_name VARCHAR(255) NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 INN TEXT NULL,

 guid1c UUID NULL,

 archive BOOLEAN NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 customer_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 parent_id UUID NULL,

 service_spec_id UUID NOT NULL,

 cfs_id UUID NULL,

 state UUID NOT NULL,

 customer_id UUID NOT NULL,

 contragent_id_m0 UUID NOT NULL,

 state_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 cfs_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 resource_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_log (

 primaryKey UUID NOT NULL,

 resource_id INT NOT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_role (

 primaryKey UUID NOT NULL,

 user_id UUID NOT NULL,

 role_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE product_catalog (

 primaryKey UUID NOT NULL,

 spec_id INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 version INT NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinality_type (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 service_spec_id UUID NOT NULL,

 dictionary_id_m0 UUID NOT NULL,

 dictionary_id UUID NULL,

 service_spec_id_m0 UUID NOT NULL,

 type UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_spec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_shared (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 existent BOOLEAN NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic_log (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_item (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 price DOUBLE PRECISION NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 log TEXT NULL,

 service_id_m0 UUID NOT NULL,

 clone_service_id_m0 UUID NOT NULL,

 state UUID NOT NULL,

 creator_id_m0 UUID NOT NULL,

 modifier_id UUID NULL,

 service_id UUID NOT NULL,

 clone_service_id UUID NULL,

 creator_id UUID NULL,

 service_order_id UUID NOT NULL,

 parent_id UUID NULL,

 state_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_common (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_order (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 service_order_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 type UUID NOT NULL,

 type_m0 UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristic_type (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_group (

 primaryKey UUID NOT NULL,

 group_id UUID NOT NULL,

 user_id UUID NOT NULL,

 group_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE role (

 primaryKey UUID NOT NULL,

 name TEXT NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE grp (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHAR(255) NULL,

 imported BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE usr (

 primaryKey UUID NOT NULL,

 login VARCHAR(255) NOT NULL,

 password TEXT NULL,

 locked BOOLEAN NOT NULL,

 email VARCHAR(255) NOT NULL,

 domain VARCHAR(255) NULL,

 last_name VARCHAR(255) NOT NULL,

 first_name VARCHAR(255) NULL,

 middle_name VARCHAR(255) NULL,

 phone TEXT NULL,

 phone_work TEXT NULL,

 phone_mobile TEXT NULL,

 position VARCHAR(255) NULL,

 department VARCHAR(255) NULL,

 photo TEXT NULL,

 thumbnail TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_locked TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_lastlogin TIMESTAMP(3) NULL,

 full_name TEXT NULL,

 short_name TEXT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic_log (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_order (

 primaryKey UUID NOT NULL,

 description TEXT NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price DOUBLE PRECISION NOT NULL,

 modifier_id UUID NULL,

 customer_id UUID NOT NULL,

 state_m0 UUID NOT NULL,

 state UUID NOT NULL,

 customer_id_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 creator_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 group_id UUID NOT NULL,

 customer_id UUID NOT NULL,

 customer_id_m0 UUID NOT NULL,

 group_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_log (

 primaryKey UUID NOT NULL,

 service_id INT NOT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 resource_spec_id UUID NOT NULL,

 type UUID NOT NULL,

 type_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec (

 primaryKey UUID NOT NULL,

 enum TEXT NOT NULL,

 type TEXT NOT NULL,

 existent BOOLEAN NOT NULL,

 shared BOOLEAN NOT NULL,

 version INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 cardinality_m0 UUID NOT NULL,

 cardinality UUID NOT NULL,

 resource_common_id_m0 UUID NOT NULL,

 parent_service_spec_id_m0 UUID NOT NULL,

 resource_common_id UUID NULL,

 parent_service_spec_id UUID NULL,

 parent_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE catalog (

 primaryKey UUID NOT NULL,

 code TEXT NOT NULL,

 svc TEXT NOT NULL,

 svc_type TEXT NULL,

 data_version TEXT NULL,

 dt_sync TIMESTAMP(3) NULL,

 descr TEXT NULL,

 vat TEXT NULL,

 is_actual BOOLEAN NOT NULL,

 dt_creation TIMESTAMP(3) NULL,

 parent_key UUID NULL,

 measure TEXT NULL,

 measure_key UUID NULL,

 status TEXT NULL,

 formula_key UUID NULL,

 billing_object_type_guid UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 group_id UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dba (

 primaryKey UUID NOT NULL,

 dt_upgrade TIMESTAMP(3) NOT NULL,

 description VARCHAR(255) NULL,

 script VARCHAR(255) NOT NULL,

 prev_version UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 resource_spec_id_m0 UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 dictionary_id UUID NULL,

 dictionary_id_m0 UUID NOT NULL,

 type UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec (

 primaryKey UUID NOT NULL,

 version INT NOT NULL,

 enum TEXT NOT NULL,

 category TEXT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 catalog_key UUID NULL,

 parent_id UUID NULL,

 cardinality UUID NOT NULL,

 parent_id_m0 UUID NOT NULL,

 cardinality_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary_value (

 primaryKey UUID NOT NULL,

 value VARCHAR(255) NULL,

 dictionary_id UUID NOT NULL,

 dictionary_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer (

 primaryKey UUID NOT NULL,

 customer TEXT NOT NULL,

 descr TEXT NULL,

 service_manager_id INT NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 archive BOOLEAN NOT NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 internal BOOLEAN NOT NULL,

 telco BOOLEAN NOT NULL,

 office BOOLEAN NOT NULL,

 barrier BOOLEAN NOT NULL,

 pci_dss BOOLEAN NULL,

 federal_low_152 BOOLEAN NULL,

 account_manager_id INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 parent_id UUID NULL,

 resource_shared_id UUID NULL,

 customer_id UUID NOT NULL,

 cfs_id_m0 UUID NOT NULL,

 parent_service_id UUID NULL,

 contragent_id UUID NULL,

 resource_shared_id_m0 UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 resource_spec_id_m0 UUID NOT NULL,

 cfs_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE user_resource_spec ADD CONSTRAINT FK626027686e464666a54e96636b512c93 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5482820c7d01cc066da4704dd64f6dcfda3a9049 on user_resource_spec (user_id); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FK2ed8ed8a8d334920a268bcea9279a032 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index882cc0a9333fe7cf2169c3b90c6f1d5e5e5502ac on user_resource_spec (resource_spec_id); 

 ALTER TABLE service_characteristic ADD CONSTRAINT FK3a8654c0467c44ac90d5f450548637e6 FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index9054b19feb9e67a5351481f5dad2bf38a7daebca on service_characteristic (service_id); 

 ALTER TABLE service_characteristic ADD CONSTRAINT FK7bc4788c6124479b942430f7dfdd8c38 FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Index0bf0c898c151c8393269e4126b5ae43a8a627e76 on service_characteristic (service_id_m0); 

 ALTER TABLE contragent ADD CONSTRAINT FK3d21ea2ee4264c7f9ad24e977c2c7ea1 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index6bbeb4d626ee16cada264df4c6fbc5667a32f5c3 on contragent (customer_id); 

 ALTER TABLE service ADD CONSTRAINT FKe2a978370b50461a9d1c3674d6b23d3c FOREIGN KEY (parent_id) REFERENCES service; 
CREATE INDEX Index7e210cc50475ddd7203177913939fc227b3878d3 on service (parent_id); 

 ALTER TABLE service ADD CONSTRAINT FK3f769803c9c04650868e4084aae4247e FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index45ae593ac4cf11e5bd51ba8948d6f8b98162d70e on service (service_spec_id); 

 ALTER TABLE service ADD CONSTRAINT FK8653af9ce6994cdaa9ba19b7f8114705 FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Indexe73b6065dd1d79e831b898efa458b1bf4d63d86d on service (cfs_id); 

 ALTER TABLE service ADD CONSTRAINT FKe4d8462fb9a844bd97a9336fd72082b9 FOREIGN KEY (state) REFERENCES service_state; 
CREATE INDEX Indexa4349a09c5bf567ef22be37b5179751a60a0b4b2 on service (state); 

 ALTER TABLE service ADD CONSTRAINT FK3d230070ce414ababd203ae81983c325 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index9a06f29c5d70767d0051ca3c539fda04d0b8061e on service (customer_id); 

 ALTER TABLE service ADD CONSTRAINT FKfe97fb958afc48ddac3b6da1704ec971 FOREIGN KEY (contragent_id_m0) REFERENCES contragent; 
CREATE INDEX Index02fe0274fcc47b88b41a75407dd8d7f446a2ca8e on service (contragent_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FK56f069feec5b4d3da1f2593166c687ce FOREIGN KEY (state_m0) REFERENCES service_state; 
CREATE INDEX Index4c80a1eb3b94ff6b898fcc2dd113428a141171cd on service (state_m0); 

 ALTER TABLE service ADD CONSTRAINT FKfb16af4d790746babcc97ba9a7658234 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index93973badbc81c53e84e78a3e51f903275c68dd3c on service (contragent_id); 

 ALTER TABLE service ADD CONSTRAINT FK23a9bab2e02c4f40a86f559e2d84da34 FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexf3616b96a18ccaaa36a8ca2ff725a5898447788e on service (cfs_id_m0); 

 ALTER TABLE resource_characteristic ADD CONSTRAINT FK04c589a3978a4e349774ab88a0b3e6af FOREIGN KEY (resource_id) REFERENCES resource; 
CREATE INDEX Indexccafd08e6e0a968a8d2f21cdabef3e11f9d0f440 on resource_characteristic (resource_id); 

 ALTER TABLE user_role ADD CONSTRAINT FK1a912094831a442d8a53ee5471474eed FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index6bc9625275e959cb02c513a9272a5966dc61806c on user_role (user_id); 

 ALTER TABLE user_role ADD CONSTRAINT FKe6b066824602464c9f7dac1bb22f9a47 FOREIGN KEY (role_id) REFERENCES role; 
CREATE INDEX Index2a9c9418e6b8be746e65024be120e147c1dec605 on user_role (role_id); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK89537d30a362473d88dafd5556a301a3 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index3d8c9657a09cb23f9a9a9b242efa11a510d49ec2 on service_spec_characteristic (service_spec_id); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK455e3240f5c745f8a77c8855dc631163 FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexf6b833f2993f396f6dc06d872060008df4c46cf7 on service_spec_characteristic (dictionary_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK832bc93a55b74c6d896f24a783e9017e FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexb5b57be8a5cf09f4745407d9ce980a391550c020 on service_spec_characteristic (dictionary_id); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK0d38feff51684556908ca5fb48bdb7b8 FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexbd0e0a6bc52cfb2902afebdfa0dcbd0f72e55b4f on service_spec_characteristic (service_spec_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK199c1d92c35f40628b1ce95ec20955c3 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexe5aecadc625dd4efc2f99af5721ef26f401cd0e3 on service_spec_characteristic (type); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FK5c59c7034cab4863b303aad2fb395651 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index71df8ee96e12de1d453119693217a230a83437f6 on user_service_spec (user_id); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FK3fbbec26f8d147aaa9ec56ac296acd7e FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index93831155d2bedac1a8df2d16a1694c5571cfcc90 on user_service_spec (service_spec_id); 

 ALTER TABLE resource_shared ADD CONSTRAINT FKafd4e8c867054358ade5e8c3fc94db6d FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexc63538dbeba556af23be9627a81abd9902cebabe on resource_shared (customer_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKb4839fb733e14b1a8258b4c19e917caa FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Index9ccea8d1c1207a98497624fe8d180eb03fd47c85 on order_item (service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK061a017052124e34b214ba569eead49c FOREIGN KEY (clone_service_id_m0) REFERENCES service; 
CREATE INDEX Index0a705cd48879fb571d86cd39560cd1e49a5ceacc on order_item (clone_service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK215d56846e0146e98aa69bc2da942500 FOREIGN KEY (state) REFERENCES order_state; 
CREATE INDEX Index0bbe667a8e4ff00d2973137e9f1608c71d2195b8 on order_item (state); 

 ALTER TABLE order_item ADD CONSTRAINT FKe7b587a56b2d4eefb7a68ab22b7c9eba FOREIGN KEY (creator_id_m0) REFERENCES usr; 
CREATE INDEX Index99043f1ffd6f4e814224d295aa21bf8233c08e5a on order_item (creator_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK74d09820e9d74c2abfb8d951f8a2e84d FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index56465c360a56c50d104948f12363d10e36459845 on order_item (modifier_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKfe71939430b94fd4b6e70c1a91b03e88 FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index809eace3ee97f6d925cdcd669295ad9b3387b9b4 on order_item (service_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKdd317359e74a4d719a783fbe339e0841 FOREIGN KEY (clone_service_id) REFERENCES service; 
CREATE INDEX Index0ca65ffffc31fb6ea9e75729f36b3ed5523d2e33 on order_item (clone_service_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK178747c5a3f64d4bbef636e77cf55fcb FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index629d50476c0e5d8241371571f91bfecda2cdd2c9 on order_item (creator_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKf8688001c85e4d73afcaf0786cf1e1fc FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Indexec6177ef296615bae6a93c849f11f9a958b12716 on order_item (service_order_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK05fe025a52944f77ab4c62914843c202 FOREIGN KEY (parent_id) REFERENCES order_item; 
CREATE INDEX Index6e26d531accc8ee0c399eafe3054ec9dd56ef7f6 on order_item (parent_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK34953cb7cff2435d8946a4c122a81063 FOREIGN KEY (state_m0) REFERENCES order_state; 
CREATE INDEX Index8d7d541c02fd3842cab88234640777370ed3e942 on order_item (state_m0); 

 ALTER TABLE user_service_order ADD CONSTRAINT FK90d874578f74495db15d0897b725d308 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index70300ae7783ea7aea3f7d8dc569a217f1a27763f on user_service_order (user_id); 

 ALTER TABLE user_service_order ADD CONSTRAINT FK7946964a47584fdd88255afd98e2e198 FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Index6e7e0b8b7307312db51ddec32b886d94ab8c644a on user_service_order (service_order_id); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK09a9652a0909490ca91547ac4fd31a31 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexbf60025b832773b4c44ee86404642aaaf9f7d852 on service_usage_spec (type); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FKf3cdd13ed6df46fda7f8235ad8c8bf6d FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Index565a312ab27f494090f2b124999463a5a4f644b2 on service_usage_spec (type_m0); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK2d83393a8b024814b1834f36819707ba FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index94a41849a4f7f38bb4cf8fa10fed3bb8a0377f86 on service_usage_spec (service_spec_id); 

 ALTER TABLE user_group ADD CONSTRAINT FKbc43bc8c3834401f82e9a4af8e7feab1 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexcd6580cef639b7fbc9c10b5d253462d6454b82ad on user_group (group_id); 

 ALTER TABLE user_group ADD CONSTRAINT FKaf9124b7c4b247f2801584e8bf562053 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index3639d39a97f2dfd5910c71162a3f0e071945035d on user_group (user_id); 

 ALTER TABLE user_group ADD CONSTRAINT FKe7288fc73ea0497ca4fa67b67fe3913b FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index6349f1b2d4cdd4a84028dd921d0774255b66281e on user_group (group_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK104d84a9e9ef4cd9bb159ecad00bfd45 FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index7b095fe8098e6c396ead41ddcf49daae97420c06 on service_order (modifier_id); 

 ALTER TABLE service_order ADD CONSTRAINT FKbfced9ee097c4e39a7bc0bd98bfd76a4 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index8d595c1ef9ce59d249ef06bdabcff71c4ab04467 on service_order (customer_id); 

 ALTER TABLE service_order ADD CONSTRAINT FKdf45b71e29f247268fc3dd2d45d5a129 FOREIGN KEY (state_m0) REFERENCES order_state; 
CREATE INDEX Index075891f1945d5c6f4c7d7eaa185a657f70f9213a on service_order (state_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK0b10ac7b199b44a28d196807cbc992b0 FOREIGN KEY (state) REFERENCES order_state; 
CREATE INDEX Indexfc9c3e03783402ea95174e160234c9fb2cee5599 on service_order (state); 

 ALTER TABLE service_order ADD CONSTRAINT FK05e4c17ea8f6416ba39075c92ac7b6d2 FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index1f482d93e8f0a434b4410cae2d8a035225389d9b on service_order (customer_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FKee0b9a85637d420d878cba62bf9535e6 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index9dffa9017dd697b1cc70ebf509289586406f35ea on service_order (contragent_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK66158eadb89a48e6a374a24ac05422f6 FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index0993ff331ce49a9fcfbbbe6a28ca46b675b4a516 on service_order (creator_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK59cf3f0d6bb0477da872ed4c00382f39 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Index3c774b8763a5b6cc0915c141be02d8a41ca1c0bf on customer_acl (group_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK3ba6eed95ec24f07842245d3ee2fcc3e FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexaf327e2528c2a6af4b0c4bc08dbfa0ad160c6096 on customer_acl (customer_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK4007bcf05eb943438b397ffdd1862cea FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index6824baf013ec80d61def4e9e79578c0980f0df6f on customer_acl (customer_id_m0); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK405d28a14fcf48348b4555f1085557c7 FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index5d4e1d509e0a2e8c6275226705e0964be595171e on customer_acl (group_id_m0); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FK74a9a6520d604808b25e7d4987e7ba58 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index80b3b281aee1760f7ee048916b46cf28f0d1d8e2 on resource_usage_spec (resource_spec_id); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FKd955f452ccf34f9f8d427df39e3cd299 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexc7c637bb031a3d56f42f260b975baf289c522bb9 on resource_usage_spec (type); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FKc5b2ca10c99d449b840ef196e5001756 FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Indexce3f4c65bf64ec0c3c80e660173d6fb5af410e42 on resource_usage_spec (type_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK7e593137b6ac4702887a7a44d71f4e8c FOREIGN KEY (cardinality_m0) REFERENCES cardinality_type; 
CREATE INDEX Index7221e0377e9a9073e6d389733493de9364e96ce2 on resource_spec (cardinality_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK1c352800099b470f93a6747f6e512a4d FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Indexb846adf318dfb6a1fd4885f89dbce5c6039bd500 on resource_spec (cardinality); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK3d0c3796aa2d4264b6863a64226e3f3d FOREIGN KEY (resource_common_id_m0) REFERENCES resource_common; 
CREATE INDEX Indexf8ee2ea7c3e629838d88ee66a0c35d559e3c046a on resource_spec (resource_common_id_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKb85e60433e594676a9d3f86c7fd9b3a0 FOREIGN KEY (parent_service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexdfe3de3f8f6cd46ed48d7d9dd6c4e519273ca3a3 on resource_spec (parent_service_spec_id_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKc17160d8ae7b48b0b8eef7574046e56b FOREIGN KEY (resource_common_id) REFERENCES resource_common; 
CREATE INDEX Indexc64ab9ecbb0144bd87f4a1218889927d483ab2dd on resource_spec (resource_common_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK2b507999b219408ca98792a4d33109c6 FOREIGN KEY (parent_service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index888d1957c11f9037c0e91396fd922bf6224ae0e6 on resource_spec (parent_service_spec_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK0113ff3225ce435791818589554183cb FOREIGN KEY (parent_id) REFERENCES resource_spec; 
CREATE INDEX Index111e380e8fb7eadfdfa87d469b6251099fb70299 on resource_spec (parent_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FKc5931bbc1abb4195ac5db0ebf70316d9 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexc2450435d7ba9d0403022967febad528bf6a3783 on service_spec_acl (group_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FK7b9ef5e06e254a7e81aae2becc70d4e5 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Indexe182a8117f4be3d1c7b3fdd0911f197ec91f680d on service_spec_acl (service_spec_id); 

 ALTER TABLE dba ADD CONSTRAINT FK839d76473e0a46b1abd2e96239f276a9 FOREIGN KEY (prev_version) REFERENCES dba; 
CREATE INDEX Indexeef6992f2af131451b1e7b43ac4e4976eabd6c17 on dba (prev_version); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK0754135b6d974b9a8b323dd6280712e7 FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Index35867bb524cf3d04af07e8d1c4506a69492aa26b on resource_spec_characteristic (resource_spec_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK73e72529c3e940528a69c203a899809e FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index9bb9374e066aa27efaec5d41418b4e4d7d9d9bf5 on resource_spec_characteristic (resource_spec_id); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FKb4ab041457bb4562aac5864cb62bfe6a FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexf91f345bc7342e04c4ca4353bad85dce739f27e9 on resource_spec_characteristic (dictionary_id); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK4f0f001cdf33441294b6988f71a3aeb5 FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexa6dbd5b460e1215db616fd55c4d70bc2ed224420 on resource_spec_characteristic (dictionary_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK1dc3b4d6b3ee4862bdc001bbb73d1aa9 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Index99cd49bc2c60e29e0cfac8787303472c269f18e4 on resource_spec_characteristic (type); 

 ALTER TABLE service_spec ADD CONSTRAINT FK5243100b0b7241eeb85de3b682bbfbfc FOREIGN KEY (catalog_key) REFERENCES catalog; 
CREATE INDEX Index0787960c394aa8f714c1790d1d279b22bb54dc15 on service_spec (catalog_key); 

 ALTER TABLE service_spec ADD CONSTRAINT FKd28343526aad4c308d514b140c79a0ea FOREIGN KEY (parent_id) REFERENCES service_spec; 
CREATE INDEX Index1dbe53f722bf19cc8ac937962955ad71ae547b2d on service_spec (parent_id); 

 ALTER TABLE service_spec ADD CONSTRAINT FK1a71ec4077bf41588c93f3c5b3f48184 FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Index1cf3df6af1d430be8b55e233c0ee4c0de7ea3efe on service_spec (cardinality); 

 ALTER TABLE service_spec ADD CONSTRAINT FKd10c2e8639a24dbab0e236eab262a5a0 FOREIGN KEY (parent_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexd9762e78f8164685915dacc1bad526af0265df83 on service_spec (parent_id_m0); 

 ALTER TABLE service_spec ADD CONSTRAINT FK06ec141ff61e4bb2adf137aca4eb9c91 FOREIGN KEY (cardinality_m0) REFERENCES cardinality_type; 
CREATE INDEX Indexbf55a58ac4aa8296204ebeb8bfba538b5be3e3d6 on service_spec (cardinality_m0); 

 ALTER TABLE dictionary_value ADD CONSTRAINT FKdc75a2596b8f467eb88463cb07b79389 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Index708041deac38faac3e07a74677612a6c5f40c467 on dictionary_value (dictionary_id); 

 ALTER TABLE dictionary_value ADD CONSTRAINT FKb5b6906f391e47dc91cfa66dd0626090 FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexec9200d62ac4b3e687fbba5591a5af7a2b32900a on dictionary_value (dictionary_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FKee895ff377594fc6abfa293ba20e4e77 FOREIGN KEY (parent_id) REFERENCES resource; 
CREATE INDEX Index51c1f00ce24bb0a3af2ed85facf7dc46cd790910 on resource (parent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK78d696a092454d06b2d217e2ac231e0b FOREIGN KEY (resource_shared_id) REFERENCES resource_shared; 
CREATE INDEX Index69f9b4538aa9c0941f8da44e85fce3cc8df76657 on resource (resource_shared_id); 

 ALTER TABLE resource ADD CONSTRAINT FK8a2e3916a7874bcb8ddee85eb2a24d48 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index0244133346102636ec228151987606344c30b2ff on resource (customer_id); 

 ALTER TABLE resource ADD CONSTRAINT FKd0ee9bdafe8648468eed2df7bf3fa6fd FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexaf27ed492fb2cfa79f2582fb53a57ef30779a768 on resource (cfs_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FKb096afdd404d45bb859256d02d8d16b7 FOREIGN KEY (parent_service_id) REFERENCES service; 
CREATE INDEX Indexae380a8db103c708de00ddaef4744b9186f3eb6f on resource (parent_service_id); 

 ALTER TABLE resource ADD CONSTRAINT FKa3c7ab7632094de584beac11debc35f3 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Indexecd426ee81aee8a0ef1badbc4a8e41d6e08e6e63 on resource (contragent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK3d94703ddede4bc5b329018e0c8b3cdc FOREIGN KEY (resource_shared_id_m0) REFERENCES resource_shared; 
CREATE INDEX Index734152b451e699f883fb8366c292beec3c7d7b18 on resource (resource_shared_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FKbee3692d5ba745bbabea394f203aa549 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index95907b0d62b8ee280cc466864699b6600f19f2cb on resource (resource_spec_id); 

 ALTER TABLE resource ADD CONSTRAINT FK77880245a8fa4f49864e173fc3a00866 FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Indexa8f39fd9a0ec4970aac3f914a54816cd2c925429 on resource (resource_spec_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FK60db79329ae24cb79c28422771705e0e FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Index8a5a2131e7cd384587ead99931b3c9b718a72a86 on resource (cfs_id); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKd02a00e956004a55b07a9c575439f44e FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK94c8575280874d29a3b16555313638e7 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK0cb1255010724f02840f9be8431613f3 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

