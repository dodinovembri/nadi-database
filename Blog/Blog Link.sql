-- Table: public.blog_link

-- DROP TABLE IF EXISTS public.blog_link;

CREATE TABLE IF NOT EXISTS public.blog_link
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    blog_id character varying(36) COLLATE pg_catalog."default",
    link_name text COLLATE pg_catalog."default",
    link_url text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT blog_link_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.blog_link
    OWNER to postgres;

--DELETE FROM public.blog_link;

INSERT INTO public.blog_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, link_name, link_url, description)
    VALUES ('e3640238-106f-4c53-96f3-eb7d3fcb6816', 1, 1, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'About', 'about', null);

INSERT INTO public.blog_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, link_name, link_url, description)
    VALUES ('d3c99614-88b5-494a-a2d8-2216233b926f', 1, 2, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'Features', 'features', null);

INSERT INTO public.blog_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, link_name, link_url, description)
    VALUES ('de4618b9-4e7a-4843-9a33-ea8dba6084a8', 1, 3, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'Pricing', 'pricing', null);

INSERT INTO public.blog_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, link_name, link_url, description)
    VALUES ('bd56f5ff-8930-4a25-85dc-867209e5c8bf', 1, 4, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'Terms', 'terms', null);