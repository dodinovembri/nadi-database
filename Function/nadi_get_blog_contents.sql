-- FUNCTION: public.nadi_get_blog_contents(character varying, character varying)

-- DROP FUNCTION IF EXISTS public.nadi_get_blog_contents(character varying, character varying);

CREATE OR REPLACE FUNCTION public.nadi_get_blog_contents(
	p_company_id character varying,
	p_language_code character varying)
    RETURNS jsonb
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
-- Variables
v_raw_blog_content record;
v_blog_contents jsonb;
v_blog_content jsonb;
v_result jsonb;
BEGIN
	-- Get blog contents
	v_blog_contents := jsonb_build_object();
	FOR v_raw_blog_content IN
		SELECT
			blog_content.id,
			blog_content.title,
			blog_content.short_description,
			blog_content.date,
			blog_content.description,
			blog_category.category_name
		FROM blog_content
			JOIN blog_category ON blog_content.blog_category_id = blog_category.id
			JOIN blog ON blog_content.blog_id = blog.id
			JOIN company_blog ON blog.id = company_blog.blog_id
		WHERE company_blog.company_id = p_company_id
			AND company_blog.status != 0
			AND blog_content.status != 0
			AND blog_category.status != 0
			AND blog.status != 0
	LOOP
		-- Build result
		v_blog_content := jsonb_build_object(
			v_raw_blog_content.id, jsonb_build_object(
				'category_name', v_raw_blog_content.category_name,
				'title', v_raw_blog_content.title,
				'short_description', v_raw_blog_content.short_description,
				'date', v_raw_blog_content.date,
				'description', v_raw_blog_content.description
			)
		);
		v_blog_contents := v_blog_content || v_blog_contents;
		v_result := v_blog_contents;
	END LOOP;
	RETURN v_result;
END
$BODY$;

ALTER FUNCTION public.nadi_get_blog_contents(character varying, character varying)
    OWNER TO postgres;
