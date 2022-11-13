-- Table: public.page_link

-- DROP TABLE IF EXISTS public.page_link;

CREATE TABLE IF NOT EXISTS public.page_link
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    page_id character varying(36) COLLATE pg_catalog."default",
    link_name text COLLATE pg_catalog."default",
    link_url text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT page_link_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.page_link
    OWNER to postgres;

--DELETE FROM public.page_link;

INSERT INTO public.page_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, page_id, link_name, link_url, description)
    VALUES ('e3640238-106f-4c53-96f3-eb7d3fcb6816', 1, 1, now(), null, null, null, 'd8cfa3a0-0cef-4b4c-b2d3-e606488953ff', 'About', 'about', null);

INSERT INTO public.page_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, page_id, link_name, link_url, description)
    VALUES ('d3c99614-88b5-494a-a2d8-2216233b926f', 1, 2, now(), null, null, null, 'd8cfa3a0-0cef-4b4c-b2d3-e606488953ff', 'Features', 'features', null);

INSERT INTO public.page_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, page_id, link_name, link_url, description)
    VALUES ('de4618b9-4e7a-4843-9a33-ea8dba6084a8', 1, 3, now(), null, null, null, 'd8cfa3a0-0cef-4b4c-b2d3-e606488953ff', 'Pricing', 'pricing', null);

INSERT INTO public.page_link(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, page_id, link_name, link_url, description)
    VALUES ('bd56f5ff-8930-4a25-85dc-867209e5c8bf', 1, 4, now(), null, null, null, 'd8cfa3a0-0cef-4b4c-b2d3-e606488953ff', 'Terms', 'terms', null);