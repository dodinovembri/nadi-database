-- FUNCTION: public.nadi_get_blog_template(character varying, character varying)

-- DROP FUNCTION IF EXISTS public.nadi_get_blog_template(character varying, character varying);

CREATE OR REPLACE FUNCTION public.nadi_get_blog_template(
	p_company_id character varying,
	p_language_code character varying)
    RETURNS jsonb
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
-- var links
v_links jsonb;
v_raw_link record;
v_link jsonb;
-- var social medias
v_social_medias jsonb;
v_raw_social_media record;
v_social_media jsonb;
-- var menus
v_menus jsonb;
v_raw_menu record;
v_menu jsonb;
-- var result
v_result jsonb;
BEGIN
	-- Get links
	v_links := json_build_object();
	FOR v_raw_link IN
		SELECT
			blog_link.id,
			blog_link.link_name,
			blog_link.link_url,
			blog_link.sort
		FROM company_blog
			JOIN blog ON company_blog.blog_id = blog.id
			JOIN blog_link ON blog.id = blog_link.blog_id
		WHERE company_blog.company_id = p_company_id
			AND company_blog.status != 0
			AND blog.status != 0
			AND blog_link.status != 0
	LOOP
		v_link := jsonb_build_object(
			v_raw_link.id, jsonb_build_object(
				'link_name', v_raw_link.link_name,
				'link_url', v_raw_link.link_url,
				'sort', v_raw_link.sort
			)
		);
		v_links := v_link || v_links;
	END LOOP;
	-- Get social medias
	v_social_medias := json_build_object();
	FOR v_raw_social_media IN
		SELECT
			blog_social_media.id,
			blog_social_media.social_media_name,
			blog_social_media.icon_name,
			blog_social_media.link_url,
			blog_social_media.sort
		FROM company_blog
			JOIN blog ON company_blog.blog_id = blog.id
			JOIN blog_social_media ON blog.id = blog_social_media.blog_id
		WHERE company_blog.company_id = p_company_id
			AND company_blog.status != 0
			AND blog.status != 0
			AND blog_social_media.status != 0
	LOOP
		v_social_media := jsonb_build_object(
			v_raw_social_media.id, jsonb_build_object(
				'social_media_name', v_raw_social_media.social_media_name,
				'icon_name', v_raw_social_media.icon_name,
				'link_url', v_raw_social_media.link_url,
				'sort', v_raw_social_media.sort
			)
		);
		v_social_medias := v_social_media || v_social_medias;
	END LOOP;
	-- Get menus
	v_menus := json_build_object();
	FOR v_raw_menu IN
		SELECT
			blog_menu.id,
			blog_menu.menu_name,
			blog_menu.menu_url,
			blog_menu.sort
		FROM company_blog
			JOIN blog ON company_blog.blog_id = blog.id
			JOIN blog_menu ON blog.id = blog_menu.blog_id
		WHERE company_blog.company_id = p_company_id
			AND company_blog.status != 0
			AND blog.status != 0
			AND blog_menu.status != 0
			AND blog_menu.parent_blog_menu_id IS NULL
	LOOP
		v_menu := jsonb_build_object(
			v_raw_menu.id, jsonb_build_object(
				'menu_name', v_raw_menu.menu_name,
				'menu_url', v_raw_menu.menu_url,
				'sort', v_raw_menu.sort
			)
		);
		v_menus := v_menu || v_menus;
	END LOOP;
	v_result := json_build_object(	
		'links', v_links,
		'social_medias', v_social_medias,
		'menus', v_menus
	);
	RETURN v_result;
END
$BODY$;

ALTER FUNCTION public.nadi_get_blog_template(character varying, character varying)
    OWNER TO postgres;
