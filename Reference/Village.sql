-- Table: public.city

-- DROP TABLE IF EXISTS public.city;

DROP TABLE IF EXISTS public.city;
CREATE TABLE IF NOT EXISTS public.city
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    city_code character varying(3) COLLATE pg_catalog."default",
    city_name text COLLATE pg_catalog."default",
    country_id character varying(36) COLLATE pg_catalog."default",
    state_province_id character varying(36) COLLATE pg_catalog."default",
    CONSTRAINT city_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.city
    OWNER to postgres;