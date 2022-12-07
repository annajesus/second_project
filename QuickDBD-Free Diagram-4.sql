-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/53j5rJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "HAPPINESS" (
    "year" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Score" FLOAT   NOT NULL,
    "GDP_per_capita" FLOAT   NOT NULL,
    "Social_support" FLOAT   NOT NULL,
    "Life_expectancy" FLOAT   NOT NULL,
    "Freedom" FLOAT   NOT NULL,
    CONSTRAINT "pk_HAPPINESS" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "SUICIDE_RATE" (
    "Country" VARCHAR   NOT NULL,
    "Suicide_rate" FLOAT   NOT NULL
);

CREATE TABLE "POPULATION_GROWTH" (
    "Country" VARCHAR   NOT NULL,
    "Population_growth" FLOAT   NOT NULL
);

CREATE TABLE "INDIA_GDP" (
    "Country" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "GDP_Billion" FLOAT   NOT NULL,
    "Per_Capita-rupees" FLOAT   NOT NULL,
    "Growth" FLOAT   NOT NULL
);

ALTER TABLE "SUICIDE_RATE" ADD CONSTRAINT "fk_SUICIDE_RATE_Country" FOREIGN KEY("Country")
REFERENCES "HAPPINESS" ("Country");

ALTER TABLE "POPULATION_GROWTH" ADD CONSTRAINT "fk_POPULATION_GROWTH_Country" FOREIGN KEY("Country")
REFERENCES "HAPPINESS" ("Country");

ALTER TABLE "INDIA_GDP" ADD CONSTRAINT "fk_INDIA_GDP_Country_Year" FOREIGN KEY("Country", "Year")
REFERENCES "HAPPINESS" ("Country", "year");

