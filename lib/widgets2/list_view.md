## ListView

### widget: ListView()
  widget de rolamento, criar listas roláveis verticais e horizontais/lista de elementos

### propriedade: scrollDirection
  Axis.vertical(padrão) - cima para  baixo
  Axis.horizontal - da esquerda para direita

### propriedade: itemExtent
  especificar altura ou largura em cada item 
  lista com todos os itens com a mesma altura ou largura 

### propriedade: physics
  controlar o comportamento de rolagem do conteúdo
  interação do usuário com a lista

  -BouncingScrollPhysics() - padrão iOS, lista 'quica' quando chega ao limite
  -ClampingScrollPhysics() - padrão Android, não 'quica', mas fica dentro dos limites
  -AlwaysScrollableScrollPhysics() - rolagem mesmo se o conteúdo couber na tela
  -NeverScrollableScrollPhysics() - impede a rolagem/estático/não rolável


### variantes do ListView
    - ListView: Cria uma lista vertical de itens que podem ser rolados para cima ou para baixo.
    - ListView.builder: É uma versão eficiente do ListView que cria itens sob demanda à medida que são visíveis na tela. É útil para listas longas ou infinitas.
    - ListView.separated: Semelhante ao ListView.builder, mas permite adicionar separadores personalizados entre os itens da lista.
    - ListView.custom: Oferece controle mais avançado sobre a criação de itens e a rolagem, permitindo uma lista altamente personalizada.
    - ListView.horizontal: Cria uma lista horizontal de itens roláveis da esquerda para a direita.
    - ListView.primary: É um ListView otimizado para rolagem no nível mais alto de um aplicativo, como na parte principal do conteúdo.


### ListView.builder: lista rolável
  itemCount: total de itens
  itemBuilder: função que recebe por parâmetro um 'context' e um 'indice'      

### ListTile: linha com até 3 elementos: 
- texto
- ícone inicial (leading)
- ícone final (trailing )

