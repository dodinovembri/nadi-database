-- Table: public.country_translation

-- DROP TABLE IF EXISTS public.country_translation;

DROP TABLE IF EXISTS public.country_translation;
CREATE TABLE IF NOT EXISTS public.country_translation
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    country_id character varying(36) COLLATE pg_catalog."default",
    language_code character varying(16) COLLATE pg_catalog."default",
    country_name text COLLATE pg_catalog."default",
    nationality text COLLATE pg_catalog."default",
    CONSTRAINT country_translation_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.country_translation
    OWNER to postgres;