DROP TABLE IF EXISTS TB_TAREFAS;
CREATE TABLE TB_TAREFAS(
    ID_TAREFA bigint GENERATED BY DEFAULT AS IDENTITY primary key,
    TIPO_TAREFA VARCHAR(255),
    DESCRICAO VARCHAR(255),
    STATUS VARCHAR(255),
    ID_USUARIO bigint
);

DROP TABLE IF EXISTS TB_TEMPO;
CREATE TABLE TB_TEMPO(
    ID_TEMPO bigint GENERATED BY DEFAULT AS IDENTITY primary key,
    TEMPO_INICIAL DATE,
    TEMPO_FINAL DATE
);

DROP TABLE IF EXISTS TB_TAREFAS_TEMPO;
CREATE TABLE TB_TAREFAS_TEMPO (
    ID_TAREFA bigint,
    ID_TEMPO bigint,
    foreign key (ID_TAREFA) references TB_TAREFAS(ID_TAREFA),
    foreign key (ID_TEMPO) references TB_TEMPO(ID_TEMPO)
);


