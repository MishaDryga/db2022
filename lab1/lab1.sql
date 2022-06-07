CREATE TABLE "racer" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "last_name" varchar,
  "racing_id" int,
  "team" varchar
);

CREATE TABLE "model" (
  "id" serial PRIMARY KEY,
  "model" varchar,
  "brend" varchar,
  "color" varchar
);

CREATE TABLE "cars" (
  "id" serial PRIMARY KEY,
  "model_id" int,
  "cars_number" int,
  "involved" bool
);

CREATE TABLE "contract" (
  "id" serial PRIMARY KEY,
  "cars_id" int,
  "date_contract" date,
  "date_end" date,
  "racer_id" int,
  "subscription" bool,
  "prize" int
);

CREATE TABLE "accidens" (
  "contract_id" serial PRIMARY KEY,
  "break_down" bool,
  "result" varchar
);

ALTER TABLE "accidens" ADD FOREIGN KEY ("contract_id") REFERENCES "contract" ("id");

ALTER TABLE "cars" ADD FOREIGN KEY ("id") REFERENCES "contract" ("cars_id");

ALTER TABLE "model" ADD FOREIGN KEY ("id") REFERENCES "cars" ("model_id");

ALTER TABLE "racer" ADD FOREIGN KEY ("id") REFERENCES "contract" ("racer_id");
