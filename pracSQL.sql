
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