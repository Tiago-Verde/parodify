# Robot FrameWork Parodify

## Introdução

**Robot Framework** é uma estrutura de automação de código aberto. Pode ser usado para automação de testes e automação de processo robótico. Robot Framework tem sintaxe fácil utilizando palavras-chave que são legíveis para humanos. Seus recursos podem ser estendidos por bibliotecas implementadas com **Python** e **Java**

O Robot Framework está hospedado no [GITHUB](https://github.com/robotframework/robotframework) onde é possivel encontrar uma documentação mais detalhada.

## Instalação

Se você já tem o **Python** instalado, pode simplesmente executar em seu terminal:
``` 
pip install robotframework
```
Caso não possua o **Python** instalado consulte a documentação em [Python.org](https://www.python.org/).

## Exemplo

Esse é um exemplo de um caso de teste simples para testar o login em algum sistema retirado do site <http://robotframework.org/#examples>

``` 
*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.txt

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
``` 
Mais exemplos como esse podem ser encontrados no mesmo site.

## Testes

Os testes são executados através de linha de comando digitados no seu terminal, conforme exemplo:
``` 
robot -d ./logs -v browser:chromium -v headless:false tests\
``` 
O parametro **-d** é responsável por especificar o diretório onde os resultados e relatórios de seu teste serão armazenados.

O paramatro **-v** é responsável por identificar uma variável que foi especificada no código.

**tests\** é a pasta onde nossos cenários de testes estão alocados.

Execute no terminal o comando **robot --help** para obter mais informações sobre o uso da linha de comando. Para uma referência mais completa acesse o [ROBOT FRAMEWORK USER GUIDE](http://http://robotframework.org/robotframework/#user-guide)

## Documentação

* [Robot FrameWork](https://robotframework.org/)
* [Biblioteca Browser](https://github.com/MarketSquare/robotframework-browser)
* [Aprendizado](https://github.com/MarketSquare/robotframework-browser)

## Agradecimento

* [QAninja Academy](https://www.youtube.com/channel/UCzsGhfwdImeKj2AOoN92hFw)