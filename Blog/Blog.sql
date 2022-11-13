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
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_category_id, title, short_description, date, description)
    VALUES ('133b5434-31e9-4826-ac3c-3d13d73a7ee9', 1, 1, now(), null, null, null, 'ddc4165d-d078-4716-a282-e07398c3e871', 'Above and beyond', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis, ipsum, optio, impedit, adipisci quis sare recusandae nostrum laboriosam mollitia dolorem ah corporis dolore!', '2022-11-13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis, ipsum, optio, impedit, adipisci quis sare recusandae nostrum laboriosam mollitia dolorem ah corporis dolore! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis, ipsum, optio, impedit, adipisci quis sare recusandae nostrum laboriosam mollitia dolorem ah corporis dolore!');