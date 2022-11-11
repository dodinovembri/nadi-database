-- Table: public.social_media

-- DROP TABLE IF EXISTS public.social_media;

CREATE TABLE IF NOT EXISTS public.social_media
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    social_media_code character varying(3) COLLATE pg_catalog."default",
    social_media_name text COLLATE pg_catalog."default",
    social_media_symbol text COLLATE pg_catalog."default",
    numeric_code character varying(3) COLLATE pg_catalog."default",
    minor_unit smallint,
    minor_unit_name text COLLATE pg_catalog."default",
    standard_precision smallint,
    price_precision smallint,
    position text COLLATE pg_catalog."default",
    CONSTRAINT social_media_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.social_media
    OWNER to sa;