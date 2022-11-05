CREATE TABLE IF NOT EXISTS proffy.aula_horario (
    auho_sq_aula_horario bigint GENERATED ALWAYS AS IDENTITY,
    auho_nu_dia_da_semana int NOT NULL,
    auho_hr_inicio TIMESTAMP WITH TIME ZONE NOT NULL,
    auho_hr_fim TIMESTAMP WITH TIME ZONE NOT NULL,
    aula_sq_aula bigint NOT NULL,
    CONSTRAINT pk_auho_sq_aula_horario PRIMARY KEY (auho_sq_aula_horario),
    CONSTRAINT fk_auho_aula FOREIGN KEY (aula_sq_aula) REFERENCES proffy.aula (aula_sq_aula),
    CONSTRAINT ck_auho_auho_nu_dia_da_semana CHECK (auho_nu_dia_da_semana BETWEEN 1 AND 7)
);

ALTER SEQUENCE IF EXISTS proffy.aula_horario_auho_sq_aula_horario_seq RENAME TO seq_auho_sq_aula_horario;

COMMENT ON TABLE proffy.aula_horario IS 'Tabela responsável pelo armazenamento dos horários das aulas.';
COMMENT ON SEQUENCE proffy.seq_auho_sq_aula_horario IS 'Gera um valor único para a coluna aula_sq_aula da tabela aluno.';
COMMENT ON COLUMN proffy.aula_horario.auho_sq_aula_horario is 'Código único gerado automaticamente pelo banco de dados.';
COMMENT ON COLUMN proffy.aula_horario.auho_nu_dia_da_semana is 'Dia da semana em que a aula ocorre. Sendo 1 = Dominfo e 7 = Sábado';
COMMENT ON COLUMN proffy.aula_horario.auho_hr_inicio is 'Hora em que a aula inicia.';
COMMENT ON COLUMN proffy.aula_horario.auho_hr_fim is 'Hora em que a aula termina.';
COMMENT ON COLUMN proffy.aula_horario.aula_sq_aula is 'Identificador da aula que será ministrada.';