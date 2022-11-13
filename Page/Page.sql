-- Table: public.page

-- DROP TABLE IF EXISTS public.page;

CREATE TABLE IF NOT EXISTS public.page
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    page_code text COLLATE pg_catalog."default",
    page_name text COLLATE pg_catalog."default",
    slug text COLLATE pg_catalog."default",
    html_title text COLLATE pg_catalog."default",
    is_authenticated boolean,
    is_home boolean,
    description text COLLATE pg_catalog."default",
    CONSTRAINT page_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.page
    OWNER to postgres;

--DELETE FROM public.page;

INSERT INTO public.page(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, page_code, page_name, slug, html_title, is_authenticated, is_home, description)
    VALUES ('d8cfa3a0-0cef-4b4c-b2d3-e606488953ff', 1, 1, now(), null, null, null, 'HOME', 'Home', 'home', 'Home', false, true, null);