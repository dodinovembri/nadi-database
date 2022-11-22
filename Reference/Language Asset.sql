-- Table: public.language_asset

-- DROP TABLE IF EXISTS public.language_asset;

DROP TABLE IF EXISTS public.language_asset;
CREATE TABLE IF NOT EXISTS public.language_asset
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    language_id character varying(36) COLLATE pg_catalog."default",
    multimedia_description_id character varying(36) COLLATE pg_catalog."default",
    CONSTRAINT language_asset_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.language_asset
    OWNER to postgres;