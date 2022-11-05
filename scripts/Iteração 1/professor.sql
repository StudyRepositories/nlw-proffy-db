CREATE TABLE IF NOT EXISTS proffy.professor (
    prof_sq_professor bigint GENERATED ALWAYS AS IDENTITY,
    prof_nm_completo varchar(255) NOT NULL,
    prof_ds_professor varchar(2000) DEFAULT NULL,
    prof_im_avatar bytea DEFAULT NULL,
    prof_nm_celular varchar(15) NOT NULL UNIQUE,
    CONSTRAINT pk_prof_sq_professor PRIMARY KEY (prof_sq_professor)
);

ALTER SEQUENCE IF EXISTS proffy.professor_prof_sq_professor_seq RENAME TO seq_prof_sq_professor;

COMMENT ON TABLE proffy.professor IS 'Tabela responsável pelo armazenamento do perfil dos professores que lecinam na plataforma.';
COMMENT ON SEQUENCE proffy.seq_prof_sq_professor IS 'Gera um valor único para a coluna prof_sq_professor da tabela professor.';
COMMENT ON COLUMN proffy.professor.prof_sq_professor IS 'Código único gerado automaticamente pelo banco de dados.';
COMMENT ON COLUMN proffy.professor.prof_nm_completo  IS 'Nome completo do professor.';
COMMENT ON COLUMN proffy.professor.prof_ds_professor IS 'Descrição do perfil do professor.';
COMMENT ON COLUMN proffy.professor.prof_im_avatar  IS 'Imagem de perfil do professor.';
COMMENT ON COLUMN proffy.professor.prof_nm_celular IS 'Número de contato para agendamento de aulas.';