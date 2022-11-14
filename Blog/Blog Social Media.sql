-- Table: public.blog_social_media

-- DROP TABLE IF EXISTS public.blog_social_media;

CREATE TABLE IF NOT EXISTS public.blog_social_media
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    blog_id character varying(36) COLLATE pg_catalog."default",
    social_media_name text COLLATE pg_catalog."default",
    icon_name text COLLATE pg_catalog."default",
    link_url text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT blog_social_media_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.blog_social_media
    OWNER to postgres;

--DELETE FROM public.blog_social_media;

INSERT INTO public.blog_social_media(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, social_media_name, icon_name, link_url, description)
    VALUES ('6890e39b-7f69-4f65-8a8d-0dcec55fa487', 1, 1, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'Twitter', 'fa fa-twitter', '#', null);

INSERT INTO public.blog_social_media(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, social_media_name, icon_name, link_url, description)
    VALUES ('d17c004a-cfd8-4643-ba04-ae857484aed1', 1, 2, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'Facebook', 'fa fa-facebook', '#', null);

INSERT INTO public.blog_social_media(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, social_media_name, icon_name, link_url, description)
    VALUES ('8049ae74-7a06-43ad-845b-b0be505c7c39', 1, 3, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', 'Instagram', 'fa fa-instagram', '#', null);