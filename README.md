# ufsc_latex-ubuntu

Imagem para rodar o latex no ubuntu 

As seguintes característica foram configuradas nesta imagem:
- A linguagem do ubuntu foi definida como padrão para pt_BR.UTF-8.
- O repositório de atualização do ubuntu foi setado para a UFPR, para tornar mais rápida sua atualização. 
- As seguintes bibliotecas foram instaladas:
    - vim 
    - curl 
    - language-pack-pt 
    - locales 
    - wget 
    - xzdec
    - build-essential
- A versão completa mais estável do LaTeX foi instalada via pacote do ubuntu.
    - Atualizações e configurações foram realilzadas no LaTeX para a utilização com o sistema de TCC da UFSC.
- Foi criado um usuário "app" para o ubuntu, sem senha.
  
## Estrutura

Os arquivos e diretório consistem em:


| Estrutura | Descrição|
|-----------|----------|
|-config/                       | Diretório com arquivos de configuração |
|+-1404_etc_apt_sources.list    | Repositório do ubuntu da UFPR para 16.04 |
|+-1604_etc_apt_sources.list    | Repositório do ubuntu da UFPR para 14.04 |
|-bash.image.sh                 | Script para acessar o shell do container |
|-build.sh                      | Script para a montagem da imagem |
|-Dockerfile                    | Comandos para a criação da imagem|
|-push.sh                       | Script para a publicação da imagem no dockerhub |
|-run.image.sh                  | Script para executar a imagem criando um container |


## Montagem da imagem

Para a ontagem da imagem deve-se executar o scrip:

    ./build.sh 

## Processo de publicação da imagem no Dockerhub

Inicialmente deve-se logar no dockerhub:

    docker login
    
Pode-se criar tags para a marcação de versões

    docker tag ufsc/latex-ubuntu:16.04 ufsc/latex-ubuntu:latest


Para o envio da versão para o dockerhub os seguintes comandos devem ser executados:

    docker push ufsc/latex-ubuntu:16.04

e/ou

    docker push ufsc/latex-ubuntu:latest
