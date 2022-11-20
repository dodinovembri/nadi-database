-- Table: public.app

-- DROP TABLE IF EXISTS public.app;

CREATE TABLE IF NOT EXISTS public.app
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT app_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.app
    OWNER to postgres;

INSERT INTO public.app(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, description)
    VALUES ('14612282-2a5c-4176-a821-b29ee311014a', 1, 1, now(), null, null, null, null);