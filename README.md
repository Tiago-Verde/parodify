# Robot Framework 
## Introdução

**Robot Framework** é uma estrutura de automação de código aberto. Pode ser usado para automação de testes e automação de processo robótico, tem sintaxe fácil utilizando palavras-chave que são legíveis para humanos. Seus recursos podem ser estendidos por bibliotecas implementadas com **Python** e **Java**
Exemplos de utilização podem ser encontradas em seu site oficial
 [Robot Framework](http://robotframework.org)

Ele está hospedado no [Github](https://github.com/robotframework/robotframework) onde é possivel encontrar uma documentação mais detalhada.

## Instalação

Ele é independente do sistema operacional, mas sua estrutura principal é implementada usando **Python**. Para isso se faz necesário a instalação do ambiente em sua maquina.

Acesse o site [Python.org](https://www.python.org/) e na aba [downloads](https://www.python.org/downloads/) escolha a última versão estável e compatível com seu sistema operacional. Após o download realizado execute o arquivo e escolha o diretório onde o Python será instalado.
Para confirmar se a instalação foi bem sucedida, abra o seu terminal e digite o comando:
```
python --version
```

Com o **Python** devidamente instalado, você deve executar em seu terminal:
``` 
pip install robotframework
```
Caso possua dúvidas com relação a instalação do **Python** consulte a documentação em [Python.org](https://www.python.org/).

## Projeto

O projeto possui três diretórios principais sendo elas:

* /logs
* /resources
* /tests

###  -- logs

Pasta responsável pelo armazenamento de todo relatório de testes elaborado pela aplicação. Incluindo prints e estatísticas.

###  -- resources

Possui o diretório /actions onde é armazenado os arquivos que implementam as Keywords do projeto.

###  -- tests

Possui os arquivos que implementam os testes propriamente ditos.

## Testes

Os testes são executados através de linha de comando digitados no seu terminal, conforme exemplo:
``` 
robot -d ./logs -v browser:chromium -v headless:false tests\
``` 
O parametro **-d** é responsável por especificar o diretório onde os resultados e relatórios de seu teste serão armazenados, ou seja a pasta /logs

O paramatro **-v** é responsável por identificar uma variável que foi especificada no código.

**tests\** é a pasta onde nossos cenários de testes estão alocados.

Execute no terminal o comando **robot --help** para obter mais informações sobre o uso da linha de comando. Para uma referência mais completa acesse o [Robot framework user guide](http://http://robotframework.org/robotframework/#user-guide)

## Documentação

* [Robot Framework](https://robotframework.org/)
* [Biblioteca Browser](https://github.com/MarketSquare/robotframework-browser)
* [Aprendizado](https://github.com/MarketSquare/robotframework-browser)

