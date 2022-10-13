--
SELECT id, parent_id FROM public.ncf_question_master WHERE template_id = 39
AND (id BETWEEN 6010 AND 6044)
ORDER BY id ASC;

SELECT * FROM public.ncf_question_master WHERE template_id = 39 ORDER BY id ASC



SELECT id,level FROM public.ncf_question_master WHERE template_id = 42
AND id BETWEEN 6029 AND 6042
ORDER BY id ASC;

SELECT id, parent_id FROM public.ncf_question_master WHERE template_id = 4 ORDER BY id ASC;

-- INSERT INTO public.ncf_question_master(sequence_number, title, guideline, level, sort, min_word, max_word, template_id, type, answer_type, parent_id, role_area_id, status, "order",question_type, title_hn,guideline_hn, display_in_report, ans_inp_type)

SELECT QM.sequence_number, QM.title, QM.guideline, QM.level, QM.sort, QM.min_word, QM.max_word, 39 as template_id, QM.type, QM.answer_type, QM.parent_id, QM.role_area_id, QM.status, QM.order,question_type, QM.title_hn,guideline_hn, QM.display_in_report, QM.ans_inp_type
FROM public.ncf_question_master as QM
WHERE QM.template_id = 2
-- AND (QM.id BETWEEN 105 AND 
ORDER BY id ASC;




-- DELETE FROM public.ncf_question_master
-- WHERE id BETWEEN 6007 AND 6028 AND template_id = 42

-- UPDATE public.ncf_question_master
-- SET level = 3
-- WHERE id = 6044

-- UPDATE public.ncf_question_master
-- SET level = 5
-- WHERE id BETWEEN 6033 AND 6035

-- UPDATE public.ncf_question_master
-- SET parent_id = 5966
-- WHERE level::int = 4 AND 
-- id between 6029 AND 6044


UPDATE public.ncf_question_master
SET title = 'Early Childhood Care Education & School Education'
WHERE id = 5944 AND template_id = 42


-- DELETE FROM public.ncf_question_master
-- WHERE template_id = 42












UPDATE public.ncf_question_master SET title='Executive Summary/Abstract',guideline='NULL',min_word='1',max_word='500',type='question',answer_type='manual',status='NULL',question_type='single',title_hn='NULL',guideline_hn='NULL',display_in_report=1,ans_inp_type='NULL'  WHERE id = 5715;
UPDATE public.ncf_question_master SET title='Process of consultations followed by the State including number of consultations, meetings, collaborations, participants etc.',guideline='NULL',min_word='NULL',max_word='NULL',type='question',answer_type='auto',status='NULL',question_type='single',title_hn='NULL',guideline_hn='NULL',display_in_report=0,ans_inp_type='NULL'  WHERE id = 5716;
UPDATE public.ncf_question_master SET title='A brief of Mobile app-based survey and District level consultations conducted by the States/UTs.',guideline='Brief on Science Education',min_word='1',max_word='500',type='question',answer_type='manual',status='NULL',question_type='single',title_hn='NULL',guideline_hn='NULL',display_in_report=1,ans_inp_type='NULL'  WHERE id = 5717;
UPDATE public.ncf_question_master SET title='List of Members, Co-opted members and special invitees of the Focus Group',guideline='NULL',min_word='NULL',max_word='NULL',type='question',answer_type='auto',status='NULL',question_type='single',title_hn='NULL',guideline_hn='NULL',display_in_report=0,ans_inp_type='NULL'  WHERE id = 5718;
UPDATE public.ncf_question_master SET title='Acknowledgements',guideline='NULL',min_word='1',max_word='300',type='question',answer_type='manual',status='NULL',question_type='single',title_hn='NULL',guideline_hn='NULL',display_in_report=1,ans_inp_type='NULL'  WHERE id = 5719;
UPDATE public.ncf_question_master SET title='Content Outline/ Chapters',guideline='NULL',min_word='NULL',max_word='NULL',type='question',answer_type='auto',status='NULL',question_type='single',title_hn='NULL',guideline_hn='NULL',display_in_report=0,ans_inp_type='NULL'  WHERE id = 5720;

DELETE FROM public.ncf_question_master WHERE id = 5721




-- Table: public.ncf_question_master

-- DROP TABLE IF EXISTS public.ncf_question_master;

CREATE TABLE IF NOT EXISTS public.ncf_question_master
(
    id integer NOT NULL DEFAULT nextval('ncf_question_master_id_seq'::regclass),
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    sequence_number character varying(255) COLLATE pg_catalog."default",
    title text COLLATE pg_catalog."default",
    guideline text COLLATE pg_catalog."default",
    level character varying(255) COLLATE pg_catalog."default",
    sort character varying(255) COLLATE pg_catalog."default",
    min_word character varying(255) COLLATE pg_catalog."default",
    max_word character varying(255) COLLATE pg_catalog."default",
    template_id integer,
    type character varying(255) COLLATE pg_catalog."default",
    answer_type character varying(255) COLLATE pg_catalog."default",
    parent_id integer,
    role_area_id integer,
    status character varying(255) COLLATE pg_catalog."default",
    "order" integer,
    question_type character varying(255) COLLATE pg_catalog."default" DEFAULT 'single'::character varying,
    title_hn text COLLATE pg_catalog."default",
    guideline_hn text COLLATE pg_catalog."default",
    display_in_report integer DEFAULT 0,
    ans_inp_type character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT ncf_question_master_pkey PRIMARY KEY (id),
    CONSTRAINT ncf_question_master_parent_id_foreign FOREIGN KEY (parent_id)
        REFERENCES public.ncf_question_master (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT ncf_question_master_role_area_id_foreign FOREIGN KEY (role_area_id)
        REFERENCES public.role_areas (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT ncf_question_master_template_id_foreign FOREIGN KEY (template_id)
        REFERENCES public.ncf_question_template (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT ncf_question_master_user_created_foreign FOREIGN KEY (user_created)
        REFERENCES public.directus_users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT ncf_question_master_user_updated_foreign FOREIGN KEY (user_updated)
        REFERENCES public.directus_users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ncf_question_master
    OWNER to ncf_dbu;

GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE public.ncf_question_master TO ncf_rash;

GRANT ALL ON TABLE public.ncf_question_master TO ncf_dbu;

GRANT ALL ON TABLE public.ncf_question_master TO ncf_meet;