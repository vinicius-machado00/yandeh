# Yandeh - Projeto Engenharia de dados

Projeto de Engenharia com o intuito de realizar a modelagem e ingestão dos dados enviados utilizando PySpark, MySQL e Docker

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
Foi utilizado MySQL como Banco de Dados
Modelagem e relacionamentos estão descritos no arquivo "Modelagem_DB.png" dentro do repositório
 
### Arquitetura

Foi utilizado Pyspark junto com Pandas para realizar a leitura e transformação dos dados, com o Pandas servindo apenas como forma de melhor
visualização dos dados e o PySpark realizanndo as transformações necessárias e Docker no momento de conteinerização do BD

Transformações realizadas: 
Transformar os dados para seus tipos corretos.
Substituir valores "NA" por Nulos
Em campos que aceitavam como resposta "Sim" e "Não", realizei a transformações dos mesmos em Bit (0 == Não, 1 == Sim).

### Executando o pipeline

Necessário ter Docker instalado para automatizar o processo , porém arquivos com comandos SQL estão salvos no respositório caso necessário realizar manualmente

Realizar Git Clone do repositório

Dentro da pasta clonada, abrir o terminal e digitar o comando: 

```
docker-compose up -d
```

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
