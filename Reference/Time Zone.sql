-- Table: public.time_zone

-- DROP TABLE IF EXISTS public.time_zone;

DROP TABLE IF EXISTS public.time_zone;
CREATE TABLE IF NOT EXISTS public.time_zone
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    utc_offset character varying(16) COLLATE pg_catalog."default",
    utc_offset_hours numeric(5,2),
    utc_daylight_saving_time_offset character varying(16) COLLATE pg_catalog."default",
    utc_daylight_saving_time_offset_hours numeric(5,2),
    zone_name text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    CONSTRAINT time_zone_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.time_zone
    OWNER to postgres;