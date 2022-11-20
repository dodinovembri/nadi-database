-- Table: public.currency

-- DROP TABLE IF EXISTS public.currency;

DROP TABLE IF EXISTS public.currency;
CREATE TABLE IF NOT EXISTS public.currency
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    currency_code character varying(3) COLLATE pg_catalog."default",
    currency_name text COLLATE pg_catalog."default",
    currency_symbol text COLLATE pg_catalog."default",
    numeric_code character varying(3) COLLATE pg_catalog."default",
    minor_unit smallint,
    minor_unit_name text COLLATE pg_catalog."default",
    standard_precision smallint,
    price_precision smallint,
    position text COLLATE pg_catalog."default",
    CONSTRAINT currency_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.currency
    OWNER to sa;