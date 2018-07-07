CREATE TABLE "comments" (
  "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  "body" text,
  "author" varchar,
  "post_id" integer,
  "created_at" datetime NOT NULL
);