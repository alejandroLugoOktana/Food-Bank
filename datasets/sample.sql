BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0016300000khHoWAAU','test 1','',NULL);
INSERT INTO "Account" VALUES('0016300000khHolAAE','test 2','',NULL);
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a00630000076JaPAAU','Food 2','','','a016300000Dfej0AAB',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a00630000076JaUAAU','COca','','','a016300000DfeivAAB',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a00630000076JaFAAU','Food 1','','','a016300000Dfej0AAB',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a00630000076JaeAAE','carrot','','','a016300000DfeivAAB',NULL);
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a016300000DfeivAAB','2020-06-18T19:00:00.000Z','Completed','0016300000khHoWAAU',NULL);
INSERT INTO "Delivery__c" VALUES('a016300000Dfej5AAB','2020-06-17T19:00:00.000Z','Requested','0016300000khHoWAAU',NULL);
INSERT INTO "Delivery__c" VALUES('a016300000Dfej0AAB','2020-06-24T19:00:00.000Z','Scheduled','0016300000khHolAAE',NULL);
COMMIT;
