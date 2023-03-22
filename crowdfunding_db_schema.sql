-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/t7fwZi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" string   NOT NULL,
    "description" string   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" string   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" string   NOT NULL,
    "currency" string   NOT NULL,
    "launched_date" string   NOT NULL,
    "end_date" string   NOT NULL,
    "category_id" string   NOT NULL,
    "subcategory_id" string   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "category" int   NOT NULL,
    "category_id" int   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category"
     )
);

CREATE TABLE "SubCategory" (
    "subcategory" int   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_SubCategory" PRIMARY KEY (
        "subcategory"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "email" string   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "email"
     )
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "SubCategory" ADD CONSTRAINT "fk_SubCategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

