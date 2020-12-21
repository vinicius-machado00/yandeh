CREATE TABLE `cotacao_Preco`
(
 `cotacao_id`      int NOT NULL AUTO_INCREMENT ,
 `fornecedor`      varchar(255) NOT NULL ,
 `data_cotacao`    date NOT NULL ,
 `uso_anual`       int NOT NULL,
 `qtde_min_pedido` int NOT NULL ,
 `desconto_qtde`   bit NOT NULL ,
 `quantidade`      int NOT NULL ,
 `custo`           float NOT NULL ,
 `bico_injetor_id` varchar(255) NOT NULL ,

PRIMARY KEY (`cotacao_id`));


CREATE TABLE `espec_Componente`
(
 `componente_id`         varchar(255) NOT NULL ,
 `componente_tipo_id`    varchar(255) NOT NULL ,
 `tipo`                  varchar(255) NOT NULL ,
 `conexao_tipo_id`       varchar(255) NOT NULL ,
 `forma`                 varchar(255) NULL ,
 `tipo_base`             varchar(255) NULL ,
 `distancia_base`        double NULL ,
 `compr_padrao_parafuso` double NULL ,
 `larg_padrao_parafuso`  double NULL ,
 `sulco`                 bit NULL ,
 `diametro_base`         double NULL ,
 `diametro_borda`        double NULL ,
 `especificidade`        bit NULL ,
 `orientatacao`          bit NULL ,
 `peso`                  double NULL ,

PRIMARY KEY (`componente_id`));

CREATE TABLE `lista_Material`
(
 `bico_injetor_id` varchar(255) NOT NULL ,
 `componente_id_1` varchar(255) NULL ,
 `componente_id_2` varchar(255) NULL ,
 `componente_id_3` varchar(255) NULL ,
 `componente_id_4` varchar(255) NULL ,
 `componente_id_5` varchar(255) NULL ,
 `componente_id_6` varchar(255) NULL ,
 `componente_id_7` varchar(255) NULL ,
 `componente_id_8` varchar(255) NULL ,
 `quantidade_1`    int NULL ,
 `quantidade_2`    int NULL ,
 `quantidade_3`    int NULL ,
 `quantidade_4`    int NULL ,
 `quantidade_5`    int NULL ,
 `quantidade_6`    int NULL ,
 `quantidade_7`    int NULL ,
 `quantidade_8`    int NULL ,

PRIMARY KEY (`bico_injetor_id`)
);