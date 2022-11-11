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
    blog_category_id character varying(36) COLLATE pg_catalog."default",
    title text COLLATE pg_catalog."default",
    short_description text COLLATE pg_catalog."default",
    date timestamp with time zone,
    description text COLLATE pg_catalog."default",
    CONSTRAINT blog_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.blog
    OWNER to postgres;

INSERT INTO public.blog(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, age_qualifying_type_id, min_age, max_age)
    VALUES ('597e322c-7536-4786-81ce-d9bd818e501c', 1, 1, now(), null, null, null, '2160e512-59fa-4f5c-8b25-424b7bfe4346', '0', '5');