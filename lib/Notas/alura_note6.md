1 - Pegar layout da tela no figma
2 - dividir em seções (3 ou 4)
3 - widgets que essa seção contem

https://www.figma.com/file/qmOZR81uY7gb8I0wMLUFCu/Alubank?node-id=0%3A1


/screens
    pasta com todas as tela que serão mostradas ao usuário

comando 'fstless' para criar uma classe Stateless já nomeada

Scaffold já vem com um tema pré estilizado pelo Material


Scaffold: widget do MaterialDesign

Column, Container, Text: widgets nativos do próprio flutter 


children: <Widget>[
    Header(),
],
é importante dizer o tipo de lista que o widget-pai vai receber, nesse caso 'Widget'

Column ocupa altura mínima necessária para mostrar o elemento

Row expande o máximo que consegue

Column e Row: widgets de organização, organizar outros widgets

sub-propriedade: Main Axis e Cross Axis

column 
    eixo principal (Main Axis) é vertical
    eixo cruzar (Cross Axis) é horizontal

row
    Main Axis: horizontal (padrão: start)
    Cross Axis: vertical
    (padrão: center)

widget de estilização: Padding    

Container, Text: receber estilização dentro dele

TextRich: textos de mesmo conteúdo mas precisam de estilos diferentes

Container: caixa vazia com a função de delimitar espaços

LinearGradient pede 3 coisas:
- onde começo
- onde termino
- quais cores (pelo menos 2)


onde elementos se repetem dentro do nosso design?
para poder criar apenas 1 vez e reutilizar

Padding: espaçamento entre um elemento e outro

cores que se adaptam
separar widgets da estilização

Themes: 
    cores
        primarias
        secundarias
        erro 
    tipografia
        tamanho
        peso
        família

primaryswatch: cor principal
    consegue acessar todos os tons da cor
    gráfico
    botão

primaryColor e primarySwatch são importantes

não da para usar Material 3 e Material 2 ao mesmo tempo

quanto mais coisa deixar preparado antes da construção melhor

1º monta a linha
depois a coluna inteira

Ink == Container
exatamente igual, só que a diferença é que no Ink, o InkWell vai ser desenhado 'por cima de mim'