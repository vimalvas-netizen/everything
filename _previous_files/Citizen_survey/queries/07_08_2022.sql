
SELECT * FROM public.survey_responses WHERE record_id = 'd5879695-2e96-48e1-aa93-ea1856a87ebf'

-- UPDATE FROM public.survey_responses 
-- SET state = 'Uttar Pradesh'
-- WHERE record_id = 'd5879695-2e96-48e1-aa93-ea1856a87ebf'



-- Two records which are changed :

-- 6b26e33f-7dd3-4868-836c-d8f817baa2c0
-- d5879695-2e96-48e1-aa93-ea1856a87ebf

-- Uttar Pradesh

SELECT * FROM public.survey_responses WHERE state = ''


SELECT state, COUNT(*) FROM public.survey_record 
GROUP BY state
ORDER BY state


-- UPDATE public.survey_record
-- SET state = 'Uttar Pradesh'
-- WHERE state = ''


-- UPDATE public.survey_responses
-- SET state = 'Uttar Pradesh'
-- WHERE state = ''