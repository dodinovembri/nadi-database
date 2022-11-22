-- Table: public.time_zone_translation

-- DROP TABLE IF EXISTS public.time_zone_translation;

DROP TABLE IF EXISTS public.time_zone_translation;
CREATE TABLE IF NOT EXISTS public.time_zone_translation
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    time_zone_id character varying(36) COLLATE pg_catalog."default",
    language_code character varying(16) COLLATE pg_catalog."default",
    zone_name text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT time_zone_translation_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.time_zone_translation
    OWNER to postgres;