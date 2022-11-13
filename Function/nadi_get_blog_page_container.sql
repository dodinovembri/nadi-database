-- FUNCTION: public.nadi_get_blog_page_container(character varying, character varying)

-- DROP FUNCTION IF EXISTS public.nadi_get_blog_page_container(character varying, character varying);

CREATE OR REPLACE FUNCTION public.nadi_get_blog_page_container(
	p_company_id character varying,
	p_language_code character varying)
    RETURNS jsonb
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
-- Variables
v_raw_company record;
v_raw_page record;
v_raw_blog record;
v_page jsonb;
v_pages jsonb;
-- Page links
v_page_links jsonb;
v_raw_page_link record;
v_page_link jsonb;
-- Page social media
v_page_social_medias jsonb;
v_raw_page_social_media record;
v_page_social_media jsonb;

v_blog jsonb;
v_blogs jsonb;
v_blog_categories jsonb;
v_blog_category jsonb;
v_raw_blog_category record;
v_result jsonb;
BEGIN
	-- 	Get Company
	SELECT 
		company.company_code,
		company.company_name
	INTO v_raw_company
	FROM company
	WHERE company.id = p_company_id
		AND company.status != 0;
	-- Get page links
	v_page_links := json_build_object();
	FOR v_raw_page_link IN
		SELECT
			page_link.id,
			page_link.link_name,
			page_link.link_url,
			page_link.sort
		FROM company_page
			JOIN page ON company_page.page_id = page.id
			JOIN page_link ON page.id = page_link.page_id
		WHERE company_page.company_id = p_company_id
			AND company_page.status != 0
			AND page.status != 0
			AND page_link.status != 0
	LOOP
		v_page_link := jsonb_build_object(
			v_raw_page_link.id, jsonb_build_object(
				'link_name', v_raw_page_link.link_name,
				'link_url', v_raw_page_link.link_url,
				'sort', v_raw_page_link.sort
			)
		);
		v_page_links := v_page_link || v_page_links;
	END LOOP;
	-- Get page social media
	v_page_social_medias := json_build_object();
	FOR v_raw_page_social_media IN
		SELECT
			page_social_media.id,
			page_social_media.social_media_name,
			page_social_media.icon_name,
			page_social_media.link_url,
			page_social_media.sort
		FROM company_page
			JOIN page ON company_page.page_id = page.id
			JOIN page_social_media ON page.id = page_social_media.page_id
		WHERE company_page.company_id = p_company_id
			AND company_page.status != 0
			AND page.status != 0
			AND page_social_media.status != 0
	LOOP
		v_page_social_media := jsonb_build_object(
			v_raw_page_social_media.id, jsonb_build_object(
				'social_media_name', v_raw_page_social_media.social_media_name,
				'icon_name', v_raw_page_social_media.icon_name,
				'link_url', v_raw_page_social_media.link_url,
				'sort', v_raw_page_social_media.sort
			)
		);
		v_page_social_medias := v_page_social_media || v_page_social_medias;
	END LOOP;
	-- Get blogs
	v_blogs := json_build_object();
	FOR v_raw_blog IN
		SELECT
			blog.id,
			blog.title,
			blog.short_description,
			blog.date,
			blog.description,
			blog_category.category_name
		FROM company_blog
			JOIN blog ON company_blog.blog_id = blog.id
			JOIN blog_category ON blog.blog_category_id = blog_category.id
		WHERE company_blog.company_id = p_company_id
			AND company_blog.status != 0
	LOOP
		v_blog := json_build_object(
			v_raw_blog.id, json_build_object(
				'category_name', v_raw_blog.category_name,
				'title', v_raw_blog.title,
				'short_description', v_raw_blog.short_description,
				'date', v_raw_blog.date,
				'description',  v_raw_blog.description
			)
		);
		v_blogs := v_blog || v_blogs;
	END LOOP;
	v_result := json_build_object(	
		'company_name', v_raw_company.company_name,
		'page_links', v_page_links,
		'page_social_medias', v_page_social_medias,
		'page_menus', null,
		'blog_summaries', v_blogs
	);
	RETURN v_result;
END
$BODY$;

ALTER FUNCTION public.nadi_get_blog_page_container(character varying, character varying)
    OWNER TO postgres;
