-- Table: public.company_page

-- DROP TABLE IF EXISTS public.company_page;

CREATE TABLE IF NOT EXISTS public.company_page
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    company_id character varying(36) COLLATE pg_catalog."default",
    page_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT company_page_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.company_page
    OWNER to postgres;

--DELETE FROM public.company_page;

INSERT INTO public.company_page(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, company_id, page_id, description)
    VALUES ('aa7b20b8-c5cf-49bc-a4c3-5dbbacf200e5', 1, 1, now(), null, null, null, '63dc9c27-d0a2-4f1e-9049-a6f55e7a0882', 'd8cfa3a0-0cef-4b4c-b2d3-e606488953ff', null);