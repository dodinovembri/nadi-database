-- Table: public.module

-- DROP TABLE IF EXISTS public.module;

CREATE TABLE IF NOT EXISTS public.module
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    module_code character varying(3) COLLATE pg_catalog."default",
    module_name text COLLATE pg_catalog."default",
    path text COLLATE pg_catalog."default",
    CONSTRAINT module_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.module
    OWNER to postgres;