## MyCustomButton
  - novo widget criado,
  - parâmetros: text, textColor

### stateless
  - não mantem estado
  - casca que não muda nada
  - widgets são imutáveis
  - para mudar algo - widgets são recriados com novos valores, tela é renderizada novamente

### criar novo widget
  1 - selecionar todo o conteúdo(sem a última virgula)
  2 - ctrl + .
  3 - 'Extract Widget'

### stateful
- que contem estado
- cria um objeto 'state', que controla as alterações dentro do widget

### criação do objeto:
  1º - createState()
  2º - initState() - chamado quando a classe _MyHomePageState é criada
    -- didChangeDependencies() - depêndencia do estado do objeto muda
    -- didUpdateWidget() - ocorre a sobreescrita da tela
  3º - build() - reconstruir a tela


### dispose 
- descartar recursos (conteúdo da memória)

Sistema Operacional é quem manda no seu app
se o seu app estiver usando memória ou bateria de mais
ele derruba o app
