## Simples aplicativo de diário

API para guardar os dados

main.dart: começar o programa por aqui

```dart
String id = const Uuid().v1(): 
```
    identificador universal único
    número gigante de 128 bits
    forma hexadecimal

### MaterialColor X Color
MaterialColor possui várias gradações de uma cor 

fonts.google.com
dependencia: 
    google_fonts: ^3.0.1
comando:
```sh
    flutter pub add google_fonts
```

dispositivo local:
    armazenamento limitado
    processamento limitado
    nem sempre temos as informações localmente
    e se perder/quebrar?

persistencia interna:
    pro
        dados persistentes
        trablha offline
    contra
        apenas disponível na aplicação
        limitado a capacidade do dispositivo
persistencia externa: serviços web
    pro
        disponível para múltiplos usuários e dispositivos
        praticamente infinito
    contra
        requer conexao com a internet
        pode ser mais lento
        maior chance a falhas

### API
    Application Programming Interface
    Interface de Programação de Aplicação
    se comunica tanto com cliente, quanto servidor

### tipos
    API SOAP
        simple object acess protocol
        usada decada passada
    API RPC
        remote procedure calls
        chamada de função no servidor
    API WebSocket
        comunicação bi-direcional
        canal aberto
        tipo ligação
    API REST
        tranferência representacional de estado
        moderna
        flexivel

### REST
    não é um protocolo ou padrão, mas sim um conjunto de restrições de arquitetura
    ausência de estado
    os servidores não salvam os dados do cliente entre as solicitações

fake API
rodando no computador local
https://nodejs.org/pt


1 - powershell como administrador 

2 -
```sh
npm install -g json-server
```
    -g
        globalmente
        funciona apartir de qualquer local da maquina

3 - fechar e abrir de novo IDE VS Code 

4 - nova pasta na raiz: 'server'

5 - novo arquivo na pasta 'server': 'db.json'

6 - abrir novo terminal no VS Code e renomear de server

7 - 
```sh
cd server
```

8 -
```sh
json-server --watch --host seu_ip_aqui db.json
``` 
    8.1 - como saber o seu IP
```sh
ipconfig
```
    ex: Endereço IPv4. . . . . . . .  . . . . . . . : 192.168.0.102

    8.2 - powershell como administrador
```sh
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```

    8.3 - ativar modo de desenvolvedor
        - menu Iniciar
        - Configurações
        - Atualização e Segurança
        - aba Para desenvolvedores
        - Modo de Desenvolvedor: ativar

9 - enter mp comando
```sh
json-server --watch --host 192.168.0.102 db.json
```

fazer teste de comunicação:
- postman
- curl

pub.dev
http
```sh
flutter pub add http
```

services/journal_service.dart

201: criado com sucesso

### HTTP

rotas do meu IP até o IP da google.com
```sh
tracert google.com
```
camada por camada
IP
    Internet Protocol
    Protocolo da Internet
    endereço da sua casa

192.168.0.11:3000
    192.168.0.11
        IP local
        endereço
    :3000
        porta
        4 caracteres

quando não tem porta, o servidor já sabe a porta

DNS
    Domain Name System
    Sistema de Nomes de Domínios
    nome para não usar o IP na hora de uma requisição
    ter nome compreensível

'142.250.219.14' mesmo que 'https://www.google.com/'

HTTP
    Hypertext Transfer Protocol
    Protocolo de Tranferência de Hipertexto
    coordena a comunicação entre cliente e servidor

Métodos HTTP
    GET
        requisição de recurso
        retorna dados
    POST
        mudança no servidor
        registrar/mudar algo
    PATCH
        modificações parciais de um recurso
    PUT
        mudar completamente um recurso
    DELETE
        remove recurso
Cabeçalhos HTTP
    ficha descritiva
        Tipos de Requisição
        Destinatário
        Tipo do Conteúdo
        Tamanho do Conteúdo
        Status da Resposta
Código de Status HTTP
    1 - 199
        respostas de informação
    200 - 299
        respostas de sucesso
            200: ok
            201: criado
    300 - 399
        redirecionamentos
            301: movido permanentemente
    400 - 499
        erros do cliente
            400: bad request
            401: unauthorized
            403: forbidden
            404: not found (não existe)
    500 - 599
        erros do servidor
            501: internal server error


informar sobre requisições e respostas
    http_interceptors.dart
    flutter pub add http_interceptor

deixar o retorno dos dados do log bonitos
    flutter pub add logger

## 03

funções que podem demorar
    eventos assíncronos

função síncrona
    as coisas acontecem imediatamente após as outras    

'await'
    esperar
    espero isso para depois continuar o fluxo 
'then()'
    quando estiver disponível, me de esse resultado
    quando o valor estiver pronto, execute a função anonima

```dart
getRandomInt(3).then((value) {
    print(value);
});
// função 'getRandomInt' é assíncrona (possui 'Future', 'async' e 'await')
```

onGenerateRoute
    pega os argumentos que foram passados pelas rotas nomeadas

JSON
    JavaScript Object Notation

## 04






















