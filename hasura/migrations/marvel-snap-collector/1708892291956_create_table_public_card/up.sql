CREATE TABLE "public"."card" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" varchar NOT NULL, "cost" integer NOT NULL DEFAULT 0, "power" integer NOT NULL DEFAULT 0, "ability" varchar, "art" varchar NOT NULL, "url" varchar NOT NULL, "slug" varchar NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_card_updated_at"
BEFORE UPDATE ON "public"."card"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_card_updated_at" ON "public"."card"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
