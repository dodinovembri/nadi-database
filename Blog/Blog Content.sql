-- Table: public.blog_content

-- DROP TABLE IF EXISTS public.blog_content;

CREATE TABLE IF NOT EXISTS public.blog_content
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    blog_id character varying(36) COLLATE pg_catalog."default",
    blog_category_id character varying(36) COLLATE pg_catalog."default",
    person_id character varying(36) COLLATE pg_catalog."default",
    title text COLLATE pg_catalog."default",
    short_description text COLLATE pg_catalog."default",
    date timestamp with time zone,
    description text COLLATE pg_catalog."default",
    CONSTRAINT blog_content_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.blog_content
    OWNER to postgres;

INSERT INTO public.blog_content(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, blog_category_id, title, short_description, date, description)
    VALUES ('133b5434-31e9-4826-ac3c-3d13d73a7ee9', 1, 1, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'ddc4165d-d078-4716-a282-e07398c3e871', '59434e42-1311-4f1d-aac2-30a65fe165b8', 'Above and beyond', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis, ipsum, optio, impedit, adipisci quis sare recusandae nostrum laboriosam mollitia dolorem ah corporis dolore!', '2022-11-13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis, ipsum, optio, impedit, adipisci quis sare recusandae nostrum laboriosam mollitia dolorem ah corporis dolore! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis, ipsum, optio, impedit, adipisci quis sare recusandae nostrum laboriosam mollitia dolorem ah corporis dolore!');