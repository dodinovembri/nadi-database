-- Table: public.region

-- DROP TABLE IF EXISTS public.region;

DROP TABLE IF EXISTS public.region;

CREATE TABLE IF NOT EXISTS public.region
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    region_code character varying(2) COLLATE pg_catalog."default",
    region_name text COLLATE pg_catalog."default",
    CONSTRAINT region_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.region
    OWNER to postgres;