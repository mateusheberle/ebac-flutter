mateusheberle: o que o pacote "permission_handler" faz?

```sh
flutter pub add permission_handler
```

GitHub Copilot: O pacote `permission_handler` é usado em projetos Flutter para gerenciar permissões de dispositivos. Ele permite que você solicite permissões, verifique o status das permissões e abra as configurações do aplicativo para que os usuários possam conceder permissões manualmente.

Aqui estão algumas funcionalidades principais do `permission_handler`:

1. **Solicitar Permissões**: Solicitar permissões específicas, como acesso à câmera, localização, armazenamento, etc.
2. **Verificar Status das Permissões**: Verificar se uma permissão foi concedida, negada ou está permanentemente negada.
3. **Abrir Configurações do Aplicativo**: Abrir as configurações do aplicativo para que os usuários possam alterar as permissões manualmente.

Exemplo de uso básico:

```dart
import 'package:permission_handler/permission_handler.dart';

void checkCameraPermission() async {
  var status = await Permission.camera.status;
  if (status.isDenied) {
    // We didn't ask for permission yet or the permission has been denied before but not permanently.
    if (await Permission.camera.request().isGranted) {
      // Permission granted.
    }
  }
}
```

Para mais detalhes, você pode consultar a [documentação oficial do pacote](https://pub.dev/packages/permission_handler).