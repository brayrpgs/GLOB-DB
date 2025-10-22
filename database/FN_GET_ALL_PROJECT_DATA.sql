CREATE OR REPLACE FUNCTION public.FN_GET_ALL_PROJECT_DATA(p_project_id bigint) 
RETURNS jsonb
LANGUAGE plpgsql
AS $$
DECLARE
    project_data jsonb;
BEGIN
    SELECT jsonb_build_object(
        'project', jsonb_build_object(
            'id', p."PROJECT_ID",
            'name', p."NAME",
            'description', p."DESCRIPTION",
            'status', p."STATUS",
            'progress', p."PROGRESS",
            'date_init', p."DATE_INIT",
            'date_end', p."DATE_END"
        ),
        'users', (
            SELECT jsonb_agg(
                jsonb_build_object(
                    'user_project_id', up."USER_PROJECT_ID",
                    'user_id', u."USER_ID",
                    'username', u."USERNAME",
                    'email', u."EMAIL",
                    'role', up."ROL_PROYECT",
                    'productivity', up."PRODUCTIVITY"
                )
            )
            FROM "USER_PROJECT" up
            JOIN "USER" u ON up."USER_ID_FK" = u."USER_ID"
            WHERE up."USER_PROJECT_ID" IN (
                SELECT "USER_PROJECT_ID_FK" FROM "PROJECT" WHERE "PROJECT_ID" = p_project_id
            )
        ),
        'issues', (
            SELECT jsonb_agg(
                jsonb_build_object(
                    'issue_id', i."ISSUE_ID",
                    'summary', i."SUMMARY",
                    'description', i."DESCRIPTION",
                    'status_issue', i."STATUS_ISSUE",
                    'due_date', i."DUE_DATE",
                    'resolve_at', i."RESOLVE_AT",
                    'votes', i."VOTES",
                    'story_points', i."STORY_POINT_ESTIMATE",
                    'user_assigned', (
                        SELECT jsonb_build_object(
                            'username', u2."USERNAME",
                            'email', u2."EMAIL"
                        )
                        FROM "USER_PROJECT" up2
                        JOIN "USER" u2 ON up2."USER_ID_FK" = u2."USER_ID"
                        WHERE up2."USER_PROJECT_ID" = i."USER_ASSIGNED_FK"
                    ),
                    'sprint', (
                        SELECT jsonb_build_object(
                            'id', s."SPRINT_ID",
                            'name', s."NAME",
                            'date_init', s."DATE_INIT",
                            'date_end', s."DATE_END"
                        )
                        FROM "SPRINT" s
                        WHERE s."SPRINT_ID" = i."SPRINT_ID_FK"
                    )
                )
            )
            FROM "ISSUE" i
            WHERE i."PROJECT_ID_FK" = p_project_id
        )
    )
    INTO project_data
    FROM "PROJECT" p
    WHERE p."PROJECT_ID" = p_project_id;

    RETURN project_data;
END;
$$;