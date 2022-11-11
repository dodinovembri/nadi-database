-- Table: public.product

-- DROP TABLE IF EXISTS public.product;

CREATE TABLE IF NOT EXISTS public.product
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    product_code character varying(36) COLLATE pg_catalog."default",
    product_name text COLLATE pg_catalog."default",
    product_unit text COLLATE pg_catalog."default",
    currency_id character varying(36) COLLATE pg_catalog."default",
    is_tax_inclusive boolean,
    tax_percent numeric(19,4),
    tax_amount numeric(19,4),
    quantity integer,
    description text COLLATE pg_catalog."default",
    CONSTRAINT product_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product
    OWNER to postgres;