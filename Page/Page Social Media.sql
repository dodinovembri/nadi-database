-- Table: public.page_social_media

-- DROP TABLE IF EXISTS public.page_social_media;

CREATE TABLE IF NOT EXISTS public.page_social_media
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    page_social_media_code character varying(3) COLLATE pg_catalog."default",
    page_social_media_name text COLLATE pg_catalog."default",
    slug text COLLATE pg_catalog."default",
    html_title text COLLATE pg_catalog."default",
    is_authenticated boolean,
    is_home boolean,
    description text COLLATE pg_catalog."default",
    CONSTRAINT page_social_media_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.page_social_media
    OWNER to postgres;

--DELETE FROM public.page_social_media;

INSERT INTO public.page_social_media(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, page_social_media_code, page_social_media_name, slug, html_title, is_authenticated, is_home, description)
    VALUES ('d8cfa3a0-0cef-4b4c-b2d3-e606488953ff', 1, 1, now(), null, null, null, 'HOME', 'Home', 'home', 'Home', false, true, null);