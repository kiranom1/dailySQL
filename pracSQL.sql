
CREATE TABLE IF NOT EXISTS "tblEmployees"
(
	  "id" integer
	, "name" varchar(50)
	, "age" integer
	, "is_manager" boolean
	, "salary" integer
)
;

/* Rename table */
ALTER TABLE "tblEmployees" RENAME TO "tblContractors"
;

/* Rename table-column */
ALTER TABLE "tblContractors" RENAME COLUMN "salary" TO "invoice_salary"
;
	
/* Add a column to the table */
ALTER TABLE "tblContractors" ADD COLUMN "contractor_designation" text
;

/* Drop-delete a column in the table */
ALTER TABLE "tblContractors" DROP COLUMN "is_manager"
;

CREATE SEQUENCE IF NOT EXISTS "r"
	start 675
	increment 3
;
CREATE TABLE IF NOT EXISTS "t"
(
	  "roll_number" integer PRIMARY KEY DEFAULT nextval('"r"')
	, "student_name" varchar(90)
)
;

ALTER SEQUENCE "r" OWNED BY "t"."roll_number";

INSERT INTO "t" ("student_name") VALUES
	  ('o')
	, ('m')
	, ('k')
;

ALTER TABLE "t" ALTER COLUMN "roll_number" DROP DEFAULT
;

CREATE TABLE IF NOT EXISTS "tblEmployees16"
(
	  "id" integer
	, "name" text
	, "age" int
	, "is_manager" boolean
	, "salary" integer
)
;