-- Table: public.multimedia_description

-- DROP TABLE IF EXISTS public.multimedia_description;

DROP TABLE IF EXISTS public.multimedia_description;
CREATE TABLE IF NOT EXISTS public.multimedia_description
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    information_type_id character varying(36) COLLATE pg_catalog."default",
    picture_category_id character varying(36) COLLATE pg_catalog."default",
    title text COLLATE pg_catalog."default",
    content_format_id character varying(36) COLLATE pg_catalog."default",
    file_name text COLLATE pg_catalog."default",
    file_size integer,
    dimension_category_id character varying(36) COLLATE pg_catalog."default",
    dimension_width integer,
    dimension_height integer,
    unit_of_measure_id character varying(36) COLLATE pg_catalog."default",
    original_file_name text COLLATE pg_catalog."default",
    url text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT multimedia_description_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.multimedia_description
    OWNER to sa;