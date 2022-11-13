-- Table: public.company_blog_category

-- DROP TABLE IF EXISTS public.company_blog_category;

CREATE TABLE IF NOT EXISTS public.company_blog_category
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    company_id character varying(36) COLLATE pg_catalog."default",
    blog_category_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT company_blog_category_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.company_blog_category
    OWNER to postgres;

--DELETE FROM public.company_blog_category;

INSERT INTO public.company_blog_category(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, company_id, blog_category_id, description)
    VALUES ('67b0bb79-14c0-4e32-b24a-991bd81bff45', 1, 1, now(), null, null, null, '63dc9c27-d0a2-4f1e-9049-a6f55e7a0882', 'ddc4165d-d078-4716-a282-e07398c3e871', null);