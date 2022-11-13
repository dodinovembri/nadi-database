-- Table: public.blog

-- DROP TABLE IF EXISTS public.blog;

CREATE TABLE IF NOT EXISTS public.blog
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT blog_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.blog
    OWNER to postgres;

INSERT INTO public.blog(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, description)
    VALUES ('133b5434-31e9-4826-ac3c-3d13d73a7ee9', 1, 1, now(), null, null, null, null);