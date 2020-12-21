# Yandeh - Projeto Engenharia de Dados

Projeto de Engenharia com o intuito de realizar a modelagem e ingestão dos dados enviados utilizando PySpark, MySQL e Docker.

## Modelagem

Dividida em 3 entidades: 

 - cotacao_Preco
 - lista_Materiais
 - espec_Componente
 
Segue Schema das tabelas a seguir :

```
 cotacao_Preco
 |-- bico_injetor_id: string 
 |-- fornecedor: string 
 |-- data_cotacao: date 
 |-- uso_anual: integer
 |-- qtde_min_pedido: integer 
 |-- desconto_qtde: bit
 |-- quanitdade: integer
 |-- custo: float 
```
```
lista_Material 
 |-- bico_injetor_id: string 
 |-- componente_id_1: string 
 |-- quantidade_1: integer
 |-- componente_id_2: string 
 |-- quantidade_2: integer 
 |-- componente_id_3: string 
 |-- quantidade_3: integer 
 |-- componente_id_4: string 
 |-- quantidade_4: integer 
 |-- componente_id_5: string 
 |-- quantidade_5: integer 
 |-- componente_id_6: string 
 |-- quantidade_6: integer 
 |-- componente_id_7: string 
 |-- quantidade_7: integer
 |-- componente_id_8: string
 |-- quantidade_8: integer 
```

```
espec_Componente
 |-- componente_id: string 
 |-- componente_tipo_id: string 
 |-- tipo: string 
 |-- conexao_tipo_id: string 
 |-- forma: string 
 |-- tipo_base: string 
 |-- distancia_base: float 
 |-- compr_padrao_parafuso: float 
 |-- larg_padrao_parafuso: float 
 |-- sulco: bit 
 |-- diametro_base: float 
 |-- diametro_borda: float 
 |-- especificidade: bit
 |-- orientatacao: bit 
 |-- peso: float 
```

Foi utilizado MySQL como Banco de Dados.
Modelagem e relacionamentos estão descritos no arquivo "Modelagem_DB.png" dentro do repositório.
 
## Arquitetura

Foi utilizado Pyspark junto com Pandas para realizar a leitura e transformação dos dados, com o Pandas servindo apenas como forma de melhor
visualização dos dados e o PySpark realizando as transformações necessárias e Docker no momento de conteinerização do BD.

### Transformações realizadas: 

Transformar os dados para seus tipos corretos.
Substituir valores "NA" por Nulos
Em campos que aceitavam como resposta "Sim" e "Não", realizei a transformações dos mesmos em Bit (0 == Não, 1 == Sim).
Em campos com valores decimais, não limitei as casas decimais pois como não conheço a regra de negócio, pode ser necessária essa precisão dos valores

## Executando o pipeline:

### Necessário ter Docker instalado para automatizar o processo , porém arquivos com comandos SQL estão salvos no respositório caso necessário realizar manualmente

 - Realizar Git Clone do repositório

 - Dentro da pasta clonada, abrir o terminal e digitar o comando: 

```
docker-compose up
```
 - Os containeres do Jupyter Lab e MySQL devem iniciar corretamente.

 - Após a inicialização de ambos, executar a linha a seguir no terminal, necessário para realizar a ingestão dos Dados no BD: 

```
docker cp mysql-connector-java-8.0.22.jar <JUPYTER_CONTAINER_ID>:/usr/local/spark/jars

```
 - Para executar o tratamento de dados, basta entrar no Jupyter Lab utilizando a URL: http://127.0.0.1:8888 e os arquivos estarão na pasta "Arquivos_Projeto"
   Obs: Caso necessário de Token p/ acesso, o token estará no primeiro terminal executado.

 - Executar os comandos SQL do arquivo "Yandeh.sql" antes de executar o Pipeline.
 
 ## Creio que grande parte dos requisitos pedidos estejam dentro do repositório, porém se precisarem de mais informações ou de ajuda em algum passo, podem mandar um email p/:   vm.vmachado42@gmail.com
 
Desde já, agradeço. 

Vinicius Machado


