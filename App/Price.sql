-- Table: public.price

-- DROP TABLE IF EXISTS public.price;

CREATE TABLE IF NOT EXISTS public.price
(
    id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    status smallint,
    sort integer,
    created_at timestamp with time zone,
    modified_at timestamp with time zone,
    creator_id character varying(36) COLLATE pg_catalog."default",
    modifier_id character varying(36) COLLATE pg_catalog."default",
    app_price_id character varying(36) COLLATE pg_catalog."default",
    country_id character varying(36) COLLATE pg_catalog."default", -- Negara
    state_province_id character varying(36) COLLATE pg_catalog."default", -- State Provinsi
    city_id character varying(36) COLLATE pg_catalog."default", -- City
    district_id character varying(36) COLLATE pg_catalog."default", -- Kabupaten
    sub_district_id character varying(36) COLLATE pg_catalog."default", -- Kecamatan
    urban_village_id character varying(36) COLLATE pg_catalog."default", -- Kelurahan
    village_id character varying(36) COLLATE pg_catalog."default", -- Desa
    hamlet_number_id text COLLATE pg_catalog."default", -- RW
    neighbourhood_number_id text COLLATE pg_catalog."default", -- RT
    date timestamp with time zone,
    price double,
    description text COLLATE pg_catalog."default",
    CONSTRAINT price_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.price
    OWNER to postgres;

--DELETE FROM public.price;

INSERT INTO public.price(
    id, status, sort, created_at, modified_at, creator_id, modifier_id, app_id, prediction_id, description)
    VALUES ('d3bd2758-a5e7-41a2-af77-cacae12433b6', 1, 1, now(), null, null, null, '14612282-2a5c-4176-a821-b29ee311014a', '14612282-2a5c-4176-a821-b29ee311014a', null);