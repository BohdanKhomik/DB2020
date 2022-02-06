CREATE TABLE "teams" (
  "id" SERIAL PRIMARY KEY,
  "team_name" VARCHAR,
  "team_region" VARCHAR,
  "logotipe" VARCHAR
);

CREATE TABLE "teamate_roles" (
  "id" SERIAL PRIMARY KEY,
  "role_name" VARCHAR
);

CREATE TABLE "team_mates" (
  "id" SERIAL PRIMARY KEY,
  "role_id" INT,
  "team_id" INT,
  "user_name" VARCHAR,
  "world_rank" INT
);

CREATE TABLE "games" (
  "id" SERIAL PRIMARY KEY,
  "team1_id" INT,
  "team2_id" INT,
  "arena_id" INT,
  "date_time" date
);

CREATE TABLE "arenas" (
  "id" SERIAL PRIMARY KEY,
  "arena_name" VARCHAR
);

ALTER TABLE "team_mates" ADD FOREIGN KEY ("role_id") REFERENCES "teamate_roles" ("id");

ALTER TABLE "team_mates" ADD FOREIGN KEY ("team_id") REFERENCES "teams" ("id");

ALTER TABLE "games" ADD FOREIGN KEY ("team1_id") REFERENCES "teams" ("id");

ALTER TABLE "games" ADD FOREIGN KEY ("team2_id") REFERENCES "teams" ("id");

ALTER TABLE "games" ADD FOREIGN KEY ("arena_id") REFERENCES "arenas" ("id");
