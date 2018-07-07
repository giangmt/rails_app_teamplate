CREATE TABLE "posts" (
  "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  "title" varchar,
  "body" text,
  "author" varchar,
  "created_at" datetime NOT NULL
);