-- Table: public.company_app

-- DROP TABLE IF EXISTS public.company_app;

CREATE TABLE IF NOT EXISTS public.company_app
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    company_id character varying(36) COLLATE pg_catalog."default",
    app_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT company_app_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.company_app
    OWNER to postgres;

--DELETE FROM public.company_app;

INSERT INTO public.company_app(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, company_id, app_id, description)
    VALUES ('9a614163-d125-46d2-9616-1bf65e9da0af', 1, 1, now(), null, null, null, '63dc9c27-d0a2-4f1e-9049-a6f55e7a0882', '14612282-2a5c-4176-a821-b29ee311014a', null);