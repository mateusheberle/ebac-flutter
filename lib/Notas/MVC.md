# MVC

    Padrão de Desenvolvimento
    Arquitetura

### tela
    - mostrar informações
    - acionada pelo usuário
    - renderiza a interface

### controle
    - executar uma ação
    - buscar dados de uma API
    - trabalhar com dados
    - ponte entre objeto, tela e API
    - regras de negócio

### objetos / models
    - transforma arquivo json em objetos e devolve pro controle
    - devolve pra tela


## Model-View-Controller

| M | V | C |
|:---:|:---:|:---:|
| Model | View | Controller |
| Objetos | Tela | Controle

### pastas/arquivos:
	/controllers/
        'imc_controller.dart'
	/models/
        'imc_model.dart'
	/views/
        'imc_page.dart'
    'main.dart'

### pastas opcionais:
	/widgets/ - widgets para uso no projeto inteiro
	/utils/ - funções que o projeto pode usar / constantes


