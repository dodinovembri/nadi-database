-- Table: public.app_prediction

-- DROP TABLE IF EXISTS public.app_prediction;

CREATE TABLE IF NOT EXISTS public.app_prediction
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    company_id character varying(36) COLLATE pg_catalog."default",
    app_id character varying(36) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT app_prediction_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.app_prediction
    OWNER to postgres;

--DELETE FROM public.app_prediction;

INSERT INTO public.app_prediction(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, app_id, prediction_id, description)
    VALUES ('75718c52-a052-4a72-a74b-15e035f4cf7c', 1, 1, now(), null, null, null, '14612282-2a5c-4176-a821-b29ee311014a', 'd3bd2758-a5e7-41a2-af77-cacae12433b6', null);