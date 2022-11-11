-- Table: public.blog_category

-- DROP TABLE IF EXISTS public.blog_category;

CREATE TABLE IF NOT EXISTS public.blog_category
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    category_code text COLLATE pg_catalog."default",
    category_name text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT blog_category_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.blog_category
    OWNER to postgres;

--DELETE FROM public.blog_category;

INSERT INTO public.blog_category(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, category_code, category_name, description)
    VALUES ('ddc4165d-d078-4716-a282-e07398c3e871', 1, 1, now(), null, null, null, 'KOMPUTER', 'Komputer & Accessories', null);

INSERT INTO public.blog_category(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, category_code, category_name, description)
    VALUES ('d1bad267-93b9-4fd1-8ab5-a849b7eb5f36', 1, 2, now(), null, null, null, 'AUTOMOTIVE', 'Automotive', null);