-- Table: public.country

-- DROP TABLE IF EXISTS public.country;

CREATE TABLE IF NOT EXISTS public.country
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    country_code character varying(2) COLLATE pg_catalog."default",
    country_name text COLLATE pg_catalog."default",
    country_alpha_3_code character varying(3) COLLATE pg_catalog."default",
    numeric_code character varying(3) COLLATE pg_catalog."default",
    country_access_code character varying(3) COLLATE pg_catalog."default",
    timezone_id character varying(36) COLLATE pg_catalog."default",
    currency_id character varying(36) COLLATE pg_catalog."default",
    language_id character varying(36) COLLATE pg_catalog."default",
    nationality text COLLATE pg_catalog."default",
    region_id character varying(36) COLLATE pg_catalog."default",
    CONSTRAINT country_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.country
    OWNER to postgres;