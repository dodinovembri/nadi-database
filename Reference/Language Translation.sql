-- Table: public.language_translation

-- DROP TABLE IF EXISTS public.language_translation;

DROP TABLE IF EXISTS public.language_translation;

CREATE TABLE IF NOT EXISTS public.language_translation
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    language_id character varying(36) COLLATE pg_catalog."default",
    language_code character varying(16) COLLATE pg_catalog."default",
    language_name text COLLATE pg_catalog."default",
    language_native_name text COLLATE pg_catalog."default",
    CONSTRAINT language_translation_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.language_translation
    OWNER to postgres;