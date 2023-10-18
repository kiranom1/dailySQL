
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


CREATE SEQUENCE IF NOT EXISTS "sq4"
	start 300
	increment 2
;
CREATE TABLE IF NOT EXISTS "tblEmployees4"
(
	  "mainHeading" text NOT NULL
	, "id" integer PRIMARY KEY DEFAULT nextval('"sq4"')
	, "name" text
)
;  

/*
postgres=# \d+ "sq4"
                            Sequence "public.sq4"
  Type  | Start | Minimum |       Maximum       | Increment | Cycles? | Cache
--------+-------+---------+---------------------+-----------+---------+-------
 bigint |   300 |       1 | 9223372036854775807 |         2 | no      |     1


postgres=# \d+ "tblEmployees4"
                                                 Table "public.tblEmployees4"
   Column    |  Type   | Collation | Nullable |         Default          | Storage  | Compression | Stats target | Description
-------------+---------+-----------+----------+--------------------------+----------+-------------+--------------+-------------
 mainHeading | text    |           | not null |                          | extended |             |              |
 id          | integer |           | not null | nextval('sq4'::regclass) | plain    |             |              |
 name        | text    |           |          |                          | extended |             |              |
Indexes:
    "tblEmployees4_pkey" PRIMARY KEY, btree (id)
Access method: heap
*/

