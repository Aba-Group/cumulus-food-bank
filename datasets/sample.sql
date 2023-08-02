BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Chicago Community Trust','');
INSERT INTO "Account" VALUES(2,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(3,'Whole Foods Market','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2023-10-31','Frozen','Keg Burgers','2');
INSERT INTO "Delivery_Item__c" VALUES(2,'2024-08-15','Refrigerated','Canned Tuna','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2023-08-17','Frozen','Bananas','1');
INSERT INTO "Delivery_Item__c" VALUES(4,'2024-03-21','Non-refrigerated','Ketchup','2');
INSERT INTO "Delivery_Item__c" VALUES(5,'2028-08-18','Non-refrigerated','Pecans','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2023-08-11T16:00:00.000+0000','Requested','1');
INSERT INTO "Delivery__c" VALUES(2,'2023-08-17T16:00:00.000+0000','Completed','3');
COMMIT;
