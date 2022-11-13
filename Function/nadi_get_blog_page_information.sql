-- FUNCTION: public.nadi_get_blog_page_information(character varying, character varying, character varying)

-- DROP FUNCTION IF EXISTS public.nadi_get_blog_page_information(character varying, character varying, character varying);

CREATE OR REPLACE FUNCTION public.nadi_get_blog_page_information(
	p_company_id character varying,
	p_slug character varying,
	p_language_code character varying)
    RETURNS jsonb
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
-- Variables
v_raw_page record;
v_result jsonb;
BEGIN
	-- Get page information
	SELECT
		page.page_name,
		page.html_title
	INTO v_raw_page
	FROM company_page
		JOIN page ON company_page.page_id = page.id
	WHERE company_page.company_id = p_company_id
		AND company_page.status != 0
		AND page.slug = p_slug
		AND page.status != 0;
	-- Build result
	v_result := json_build_object(
		'page_name', v_raw_page.page_name,
		'html_title', v_raw_page.html_title
	);
	RETURN v_result;
END
$BODY$;

ALTER FUNCTION public.nadi_get_blog_page_information(character varying, character varying, character varying)
    OWNER TO postgres;
