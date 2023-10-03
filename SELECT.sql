/* First SELECT sql statement */

DROP TABLE IF EXISTS "tblStaff" CASCADE
;
CREATE TABLE IF NOT EXISTS "tblStaff"
(
  "staff_id" varchar(20) PRIMARY KEY
, "staff_type" varchar(30)
, "school_id" varchar(20)
, "name" varchar(95)
, "surname" varchar(95)
, "age" integer
, "date_of_birth" date
, "date_of_joining" date
, "gender" varchar(10) CHECK("gender" IN ('M', 'F', 'Male', 'Female'))
, "address_id" varchar(20)
--, constraint pk_staff_id PRIMARY KEY("staff_id")
--, constraint fk_staff_school FOREIGN KEY("school_id") REFERENCES "tblSCHOOL"("school_id")
--, constraint fk_staff_address FOREIGN KEY("address_id") REFERENCES "tblADDRESS"("address_id")
)
;

DROP TABLE IF EXISTS "tblAddress" CASCADE
;
CREATE TABLE IF NOT EXISTS "tblAddress"
(
    "address_id" character varying(20)
  , "street" character varying(250)
  , "city" character varying(95)
  , "state" character varying(95)
  , "country" varchar(98)
)
;
