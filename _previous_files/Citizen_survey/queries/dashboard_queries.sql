

--   public.d_cs_total_count
WITH MAINTABLE1 as
(SELECT SLM.langcode, CSM.state_name, 
(CASE WHEN SR.id is NULL then 0 else 1 END) as submission
FROM public.cs_language_master as SLM
CROSS JOIN public.cs_state_master as CSM
LEFT JOIN public.survey_record as SR ON SR.state = CSM.state_name AND SR.preferred_lang = SLM.langcode
)

SELECT MAINTABLE1.state_name, MAINTABLE1.langcode, SUM(MAINTABLE1.submission) as submitted
FROM MAINTABLE1
GROUP BY  MAINTABLE1.state_name, MAINTABLE1.langcode




-- public.d_cs_ques_count
SELECT  CSM.state_name as state_name,SLM.langcode as lang_code,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 1
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_1,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 2
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_2,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 3
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_3,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 4
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_4,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 5
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_5,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 6
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_6,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 7
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_7,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 8
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_8,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 9
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_9,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 10
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_10,
(SELECT COUNT(SRS1.*)
FROM public.cs_language_master as SLM1
CROSS JOIN public.cs_state_master as CSM1 
LEFT JOIN public.survey_record as SR1 ON SR1.state = CSM1.state_name AND SR1.preferred_lang = SLM1.langcode
LEFT JOIN public.survey_responses as SRS1 ON SR1.id = SRS1.record_id 
WHERE SRS1.question_id = 11
AND SLM1.language = SLM.language AND CSM1.state_name = CSM.state_name
) as question_11
FROM public.cs_language_master as SLM
CROSS JOIN public.cs_state_master as CSM




-- public.d_cs_option_count
WITH table_2 as 
(
	WITH table_1 as (
SELECT CSM.state_name, SLM.langcode, SR.id, SRS.question_id, SRS.responses, SRS.text_response,
(CASE WHEN SR.id is NULL then 0 else 1 end) as submitted
FROM public.cs_language_master as SLM
CROSS JOIN public.cs_state_master as CSM
LEFT JOIN public.survey_record as SR ON SR.state = CSM.state_name AND SR.preferred_lang = SLM.langcode
LEFT JOIN public.survey_responses as SRS ON SR.id = SRS.record_id
ORDER BY  CSM.state_name, SLM.langcode, SRS.question_id)

SELECT  CSM.state_name, SLM.langcode as lang_code,
questions as question_id, options, table_1, responses,
(CASE WHEN table_1.question_id is NULL then 0 else 1 end) as response_present
FROM public.cs_language_master as SLM
CROSS JOIN public.cs_state_master as CSM
CROSS JOIN unnest(ARRAY[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]::int[]) as questions
CROSS JOIN unnest(ARRAY['A', 'B', 'C', 'D']) as options
LEFT JOIN table_1 on table_1.state_name = CSM.state_name 
AND table_1.langcode = SLM.langcode
AND table_1.question_id = questions
AND options = any(table_1.responses)
ORDER BY SLM.language, CSM.state_name, questions, options
	)
SELECT table_2.state_name, table_2.lang_code as langcode, table_2.options as option_name, SUM(response_present) as count,  table_2.question_id
FROM table_2
GROUP BY table_2.state_name, table_2.lang_code, table_2.question_id, table_2.options











SELECT SLM.language, CSM.state_name, COUNT(SRS.*)
FROM public.cs_language_master as SLM
CROSS JOIN public.cs_state_master as CSM 
LEFT JOIN public.survey_record as SR ON SR.state = CSM.state_name AND SR.preferred_lang = SLM.langcode
LEFT JOIN public.survey_responses as SRS ON SR.id = SRS.record_id 
WHERE SRS.question_id = 1
GROUP BY SLM.language, CSM.state_name