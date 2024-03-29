# Escola em casa DF
<a href="https://www.gnu.org/licenses/gpl-3.0.pt-br.html"><img src="https://img.shields.io/badge/licence-GPL3-green.svg"/></a>

<p align="center">
    <img src="https://avatars2.githubusercontent.com/u/67379876?s=400&u=aeea6d44c84f2fb761a4a3fcd8e0f185c3bb2982&v=4" alt="logo" width="200px">
</p>

Este repositório é destinado ao aplicativo 
android da plataforma [**Escola em Casa DF**](https://escolaemcasa.se.df.gov.br). Concede acesso gratuito, através de dados patrocinados, aos recursos necessários para a realização do ensino à distância da Secretaria de Educação do Distrito Federal.

## O que é o app Escola em Casa DF?

A plataforma “Escola em Casa DF” é a sala de aula virtual da Secretaria de Estado de Educação do Distrito Federal, preparada especialmente para você! Por meio dela, poderemos retomar os nossos hábitos de estudos de forma segura e inovadora, permitindo a continuidade dos momentos preciosos de aprendizagem, interrompidos pelo surgimento da pandemia da COVID-19.

O aplicativo permite os alunos acessarem as plataformas Google Classroom e Wikipedia gratuitamente, não consumindo seus dados móveis. A primeira é onde acontece a disponibilização de todos os recursos para a realização das aulas. A segunda serve como uma plataforma de apoio à pesquisa.

A gratuidade do acesso às plataformas é possibilitada através dos dados patrocinados. O qual permite o patrocinador pagar pelos dados móveis utilizados pelo consumidor.

## Entenda a arquitetura

São utilizadas as seguintes tecnologias para compor a arquitetura do projeto:

![app-arquitetura](https://user-images.githubusercontent.com/26297247/85495153-5f8a6b80-b5b0-11ea-83c5-d3e8472b5b23.png)

O usuário acessa o aplicativo, desenvolvido nativamente. Com isso, é possível acessar as plataformas (Google Classroom e Wikipedia) que são carregadas, cada uma, em um *webview*. Além disso, o aplicativo está conectado diretamente com o SDK do Datami, responsável por permitir a utilização dos dados patrocinados, através da realização de uma *ponte* entre as operadores de telefonia e a aplicação. O Elasticsearch e o Kibana são responsáveis por armazenar e gerar relatórios do consumo de dados patrocinados.

## Como testar o aplicativo

Caso queira simplesmente testar o aplicativo, você precisa gerar um APK e instalá-lo em seu dispositivo móvel, virtual ou físico. Para isto, siga os seguintes passos:

- Clone ou faça o *fork* do repositório

- Execute por meio do xcode versão 11.5

- Pronto, estará com o aplicativo rodando em seu dispositivo.

## Como desbloquear um domínio para acesso patrocinado?

Vá até o arquivo `GCWebViewController.swift`, linha 25:

![Linha 25](https://github.com/Escola-em-Casa/resources-escola-em-casa/blob/master/exemple.png)


Adicione dentro do if: `!host.contains("domain.com") &&`

No qual domain.com é domínio no qual você quer desbloquear.

## Tecnologias do projeto

- [**Swift**](https://swift.org/) - Linguagem de programação
- [**Datami**](http://datami.com/) - Dados patrocinados
- [**Elasticsearch**](https://www.elastic.co/guide/index.html) - Armazenamento de dados
- [**Kibana**](https://www.elastic.co/guide/en/kibana/current/index.html) - Análise dos dados patrocinados

## Como contribuir

Ficaremos muito felizes de receber e incorporar suas contribuições.

Em geral o processo é bem simples:

Crie uma issue descrevendo uma feature que você queira trabalhar (ou olhe as issues com o label help-wanted e good-first-issue)
Escreva seu código, testes e documentação
Abra um pull request descrevendo as suas alterações propostas
Seu pull request será revisado por um dos mantenedores, que pode levantar questões para você sobre eventuais mudanças necessárias ou questões.
Leia o [Guia de Contribuição](./CONTRIBUTING.md) para melhores informações.

## Como conseguir ajuda

Caso não tenha encontrado a solução em documentações ou foruns pertinentes à tecnologia e/ou seja um problema do próprio aplicativo, crie uma [*issue*](https://github.com/Escola-em-Casa/android-escola-em-casa/issues/new) com a *label* ```help wanted``` que tentaremos responder o mais breve possível.

## Licença

Todo o aplicativo é desenvolvido sob a licença [GPL3](https://github.com/Escola-em-Casa/android-escola-em-casa/blob/master/LICENSE).
