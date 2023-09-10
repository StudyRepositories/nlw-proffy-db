alter table proffy.aula_horario drop constraint ck_auho_auho_nu_dia_da_semana;
alter table proffy.aula_horario add constraint ck_auho_auho_nu_dia_da_semana check (
	(((auho_nu_dia_da_semana)::numeric >= (0)::numeric)
	and ((auho_nu_dia_da_semana)::numeric < (7)::numeric))
);