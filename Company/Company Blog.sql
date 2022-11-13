-- Table: public.company_blog

-- DROP TABLE IF EXISTS public.company_blog;

CREATE TABLE IF NOT EXISTS public.company_blog
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    company_id character varying(36) COLLATE pg_catalog."default",
    blog_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT company_blog_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.company_blog
    OWNER to postgres;

--DELETE FROM public.company_blog;

INSERT INTO public.company_blog(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, company_id, blog_id, description)
    VALUES ('fb6d388f-35e3-4ae3-bfd6-563bccd61b24', 1, 1, now(), null, null, null, '63dc9c27-d0a2-4f1e-9049-a6f55e7a0882', '133b5434-31e9-4826-ac3c-3d13d73a7ee9', null);