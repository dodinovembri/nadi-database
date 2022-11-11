-- Table: public.company

-- DROP TABLE IF EXISTS public.company;

CREATE TABLE IF NOT EXISTS public.company
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    company_code text COLLATE pg_catalog."default",
    company_name text COLLATE pg_catalog."default",
    business_entity_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT company_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.company
    OWNER to postgres;

--DELETE FROM public.company;

INSERT INTO public.company(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, company_code, company_name, business_entity_id, description)
    VALUES ('63dc9c27-d0a2-4f1e-9049-a6f55e7a0882', 1, 1, now(), null, null, null, 'ELSYSTEM', 'EL System', null, null);