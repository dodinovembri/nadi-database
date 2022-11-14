-- Table: public.blog_menu

-- DROP TABLE IF EXISTS public.blog_menu;

CREATE TABLE IF NOT EXISTS public.blog_menu
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    blog_id character varying(36) COLLATE pg_catalog."default",
    parent_blog_menu_id character varying(36) COLLATE pg_catalog."default",
    menu_name text COLLATE pg_catalog."default",
    menu_url text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT blog_menu_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.blog_menu
    OWNER to postgres;

--DELETE FROM public.blog_menu;

INSERT INTO public.blog_menu(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, parent_blog_menu_id, menu_name, menu_url, description)
    VALUES ('3a53a2bd-3ac6-459a-a639-88fcb59e9130', 1, 1, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', null, 'Home', 'home', null);

INSERT INTO public.blog_menu(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, parent_blog_menu_id, menu_name, menu_url, description)
    VALUES ('8be3af6a-02c2-49af-982f-df651a6fa3a8', 1, 2, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', null, 'Categories', 'categories', null);

INSERT INTO public.blog_menu(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, parent_blog_menu_id, menu_name, menu_url, description)
    VALUES ('38778d43-49cb-4f96-97cf-01814a332ec5', 1, 3, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', null, 'Portofolio', 'portofolio', null);

INSERT INTO public.blog_menu(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, parent_blog_menu_id, menu_name, menu_url, description)
    VALUES ('8897ee73-a860-4bae-870d-45393e5c4cd3', 1, 4, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', null, 'About Us', 'about-us', null);

INSERT INTO public.blog_menu(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, parent_blog_menu_id, menu_name, menu_url, description)
    VALUES ('ae9295d6-eb30-4b75-a3d6-1e72c6211e03', 1, 5, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', '8be3af6a-02c2-49af-982f-df651a6fa3a8', 'Komputer & Accessories', 'computer-accessories', null);

INSERT INTO public.blog_menu(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, blog_id, parent_blog_menu_id, menu_name, menu_url, description)
    VALUES ('84fca2e5-56db-4b21-927a-9ed0e552ffc2', 1, 6, now(), null, null, null, '133b5434-31e9-4826-ac3c-3d13d73a7ee9', '8be3af6a-02c2-49af-982f-df651a6fa3a8', 'Automotive', 'automotive', null);