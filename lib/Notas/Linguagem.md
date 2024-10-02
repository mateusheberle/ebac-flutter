# Conhecendo a Linguagem

### Dart
- fortemente tipado
- final 
    - assim que recebe um valor, não pode ser alterada uma segunda vez

### VSCode:
```sh
> dart: new project
```

### Debug:
- No modo de depuração (precisa colocar um ponto vermelho em algum lugar)
- Você pode usar o console para saber valores de variáveis e fazer operações

```sh
stdout.write(‘Qual é o seu nome?’);
```

### Terminal do VSC:
```
dart lib/input.dart
```

### Null
- String?
    - tipo String + tipo Null
- ! 
    - garanto que não vai ser nulo

### Parâmetros 

#### opcionais:

```
Pessoa([this.nome = "Desconhecido", this.idade = 0]);
```

#### nomeados:
```
Pessoa({this.nome = "Desconhecido", this.idade = 0});
```


### imports 
- utiliza bibliotecas internas e externas

### pilares:
- tipo
- nome
- parâmetros

