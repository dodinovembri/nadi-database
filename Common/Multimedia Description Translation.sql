-- Table: public.multimedia_description_translation

-- DROP TABLE IF EXISTS public.multimedia_description_translation;

DROP TABLE IF EXISTS public.multimedia_description_translation;
CREATE TABLE IF NOT EXISTS public.multimedia_description_translation
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    multimedia_description_id character varying(36) COLLATE pg_catalog."default",
    language_code character varying(16) COLLATE pg_catalog."default",
    title text COLLATE pg_catalog."default",
    content_format_id character varying(36) COLLATE pg_catalog."default",
    file_name text COLLATE pg_catalog."default",
    file_size integer,
    dimension_width integer,
    dimension_height integer,
    original_file_name text COLLATE pg_catalog."default",
    url text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT multimedia_description_translation_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.multimedia_description_translation
    OWNER to sa;