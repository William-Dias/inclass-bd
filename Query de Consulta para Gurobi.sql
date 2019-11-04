/*Seleção de turmas pertencentes à instituição de id 2 (UniBH)*/
SELECT `id`, `qtde_alunos`, `cod_turma`, `curso`, `turno`, `id_escola` FROM `tbturma`
WHERE `id_escola` = 2


/*Seleção de salas conforme capacidade (quantidade de alunos) e conforme tipo (0 - comum 1- laboratório)*/
SELECT `id`,`campus`,`capacidade`,`localizacao`,`tipo` FROM `tbsala` WHERE `capacidade` > 1 and `tipo` = 0


/*Seleção de turmas que fazem determinada disciplina*/
SELECT id_turma, id_disciplina, tbdisciplina.nome, tbdisciplina.tipo_sala FROM `tbturma_disciplina` 
inner join tbdisciplina on tbturma_disciplina.id_disciplina = tbdisciplina.id 
where id_disciplina = 103035001
ORDER BY tbturma_disciplina.id_turma


/*Seleção de DISCIPLINAS que determinadas turmas fazem*/
SELECT id_turma, id_disciplina, tbdisciplina.nome, tbdisciplina.tipo_sala FROM `tbturma_disciplina` inner join tbdisciplina on tbturma_disciplina.id_disciplina = tbdisciplina.id 
Where tbturma_disciplina.id_turma = 2
ORDER BY `tbdisciplina`.`tipo_sala`




/*###OUTRAS SELEÇÕES GENÉRICAS###*/

/*Dados da tabela de escolas*/
SELECT `id`, `nome`, `id_usuario` FROM `tbescola` 

/*Dados da tabela de horários*/
SELECT `id`, `dia_semana`, `horario` FROM `tbhorario`

/*Dados tabela que relaciona Turma x Disciplina*/
SELECT `id`, `id_turma`, `id_disciplina`, `ano`, `semestre` FROM `tbturma_disciplina` 

/*Dados da tabela de usuários*/
SELECT * FROM `tbusuario`

/*Dados tabela que relaciona Horário x Turma x Disciplina*/
SELECT `id`, `id_horario`, `id_disciplina`, `id_sala` FROM `tbhorario_turma_disciplina`

/*Dados da tabela de escolas */
SELECT * FROM `tbescola` 

/*Dados da tabela de disciplinas*/
SELECT `id`,`nome`,`tipo_sala`,`id_escola` FROM `tbdisciplina`