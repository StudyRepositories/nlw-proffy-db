CREATE TABLE IF NOT EXISTS proffy.aula (
	aula_sq_aula bigint GENERATED ALWAYS AS IDENTITY,
    aula_nm_materia varchar(50) NOT NULL,
    aula_vl_custo numeric(6,2) NOT NULL,
    prof_sq_professor bigint NOT NULL,
    CONSTRAINT pk_aula_sq_aula PRIMARY KEY (aula_sq_aula),
    CONSTRAINT fk_aula_professor FOREIGN KEY (prof_sq_professor) REFERENCES proffy.professor (prof_sq_professor)
);

ALTER SEQUENCE IF EXISTS proffy.aula_aula_sq_aula_seq RENAME TO seq_aula_sq_aula;

COMMENT ON TABLE proffy.aula IS 'Tabela responsável pelo armazenamento da aula de um professor.';
COMMENT ON SEQUENCE proffy.seq_aula_sq_aula IS 'Gera um valor único para a coluna aula_sq_aula da tabela aluno.';
COMMENT ON COLUMN proffy.aula.aula_sq_aula is 'Código único gerado automaticamente pelo banco de dados.';
COMMENT ON COLUMN proffy.aula.aula_nm_materia is 'Nome da matéria lecionada pelo professor.';
COMMENT ON COLUMN proffy.aula.aula_vl_custo is 'Valor da aula.';
COMMENT ON COLUMN proffy.aula.prof_sq_professor is 'Identificador do professor que leciona a aula';
