CREATE TABLE `cotacao_Preco`
(
 `cotacao_id`      int NOT NULL AUTO_INCREMENT ,
 `fornecedor`      text NOT NULL ,
 `data_cotacao`    date NOT NULL ,
 `qtde_min_pedido` int NOT NULL ,
 `desconto_qtde`   bit NOT NULL ,
 `quantidade`      int NOT NULL ,
 `custo`           float NOT NULL ,
 `bico_injetor_id` text NOT NULL ,

PRIMARY KEY (`cotacao_id`),
KEY `fkIdx_103` (`bico_injetor_id`),
CONSTRAINT `FK_103` FOREIGN KEY `fkIdx_103` (`bico_injetor_id`) REFERENCES `lista_Material` (`bico_injetor_id`)
);

CREATE TABLE `espec_Componente`
(
 `componente_id`         text NOT NULL ,
 `bico_injetor_id`       text NOT NULL ,
 `componente_tipo_id`    text NOT NULL ,
 `tipo`                  text NOT NULL ,
 `conexao_tipo_id`       text NOT NULL ,
 `forma`                 text NULL ,
 `tipo_base`             text NULL ,
 `distancia_base`        double NULL ,
 `compr_padrao_parafuso` double NULL ,
 `larg_padrao_parafuso`  double NULL ,
 `sulco`                 bit NULL ,
 `diametro_base`         double NULL ,
 `diametro_borda`        double NULL ,
 `especificidade`        bit NULL ,
 `orientatacao`          bit NULL ,
 `peso`                  double NOT NULL ,

PRIMARY KEY (`componente_id`),
KEY `fkIdx_72` (`bico_injetor_id`),
CONSTRAINT `FK_72` FOREIGN KEY `fkIdx_72` (`bico_injetor_id`) REFERENCES `lista_Material` (`bico_injetor_id`)
);

CREATE TABLE `lista_Material`
(
 `bico_injetor_id` text NOT NULL ,
 `componente_id_1` text NULL ,
 `componente_id_2` text NULL ,
 `componente_id_3` text NULL ,
 `componente_id_4` text NULL ,
 `componente_id_5` text NULL ,
 `componente_id_6` text NULL ,
 `componente_id_7` text NULL ,
 `componente_id_8` text NULL ,
 `quantidade_1`    int NULL ,
 `quantidade_2`    int NULL ,
 `quantidade_3`    int NULL ,
 `quantidade_4`    int NULL ,
 `quantidae_5`     int NULL ,
 `quantidade_6`    int NULL ,
 `quantidade_7`    int NULL ,
 `quantidade_8`    int NULL ,

PRIMARY KEY (`bico_injetor_id`)
);