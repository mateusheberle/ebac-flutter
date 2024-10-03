## On pan update

variáveis com a posição vertical e horizontal em zero(canto superior esquerdo)
  double _top = 0;
  double _left = 0;

atribui as variáveis de posição no widget Positioned
```dart
  Positioned(
    top: _top,
    left: _left,
    child: GestureDetector(
      onPanUpdate: (details) {
        _top = max(0, _top + details.delta.dy);   // garante que a posiçao não seja menor que zero
        _left = max(0, _left + details.delta.dx);

        print('TOP: $_top / LEFT:  $_left');      // imprime no console a posição X e Y

        setState(() {});                          // atualiza a tela com a nova coordenada
      },
      child: Container(),
    ),
  ),
```


onPanUpdate
  movimento de arrastar o dedo ou mouse na tela 
  serve para arrastar um objeto na tela
  ao clicar e arrastar o widget, sua posição fica guardada em 'details'
  são atribuidas as variáveis de posição a nova posição do widget 


função max()
  _left = max(0, _left + details.delta.dx);

  garante que a posição não seja menor que zero
  A = max(0, A + B);
  if(A + B < 0){
    A = 0;
  }
  se a soma de A + B for negativo, A recebe zero


alternativa para o widget não sair da tela

```dart
  /**/
  class _MyHomePageState extends State<MyHomePage> {
    double _top = 0;
    double _left = 0;
    double _width = 0;
    double _height = 0;

    @override
    Widget build(BuildContext context) {
      _width = MediaQuery.of(context).size.width;
      _height = MediaQuery.of(context).size.height;
  /**/

  /**/
    onPanUpdate: (details) {
      _left = min(max(0, _left + details.delta.dx), _width - 200);
      _top = min(max(0, _top + details.delta.dy), _height - 200);
      print('TOP: $_top / LEFT:  $_left');
      setState(() {});
    },
  /**/

  void test(DragUpdateDetails details) {
    _top = max(0, _top + details.delta.dy);
    _left = max(0, _left + details.delta.dx);
    debugPrint('TOP: $_top / LEFT:  $_left');
    setState(() {});
  }
```