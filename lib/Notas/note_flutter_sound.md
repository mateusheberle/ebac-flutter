mateusheberle: o que o pacote "flutter_sound" faz?

```sh
flutter pub add flutter_sound
```

GitHub Copilot: O pacote `flutter_sound` é utilizado em projetos Flutter para gravação e reprodução de áudio. Ele oferece uma ampla gama de funcionalidades para manipulação de áudio, incluindo:

1. **Gravação de Áudio**: Permite gravar áudio usando o microfone do dispositivo.
2. **Reprodução de Áudio**: Permite reproduzir arquivos de áudio de várias fontes, como arquivos locais, URLs, etc.
3. **Manipulação de Áudio**: Oferece funcionalidades para pausar, parar, avançar e retroceder a reprodução de áudio.
4. **Suporte a Diferentes Formatos de Áudio**: Suporta vários formatos de áudio, como MP3, WAV, AAC, etc.
5. **Controle de Volume e Velocidade**: Permite ajustar o volume e a velocidade da reprodução de áudio.

Exemplo de uso básico:

```dart
import 'package:flutter_sound/flutter_sound.dart';

void main() {
  FlutterSoundRecorder _recorder = FlutterSoundRecorder();
  FlutterSoundPlayer _player = FlutterSoundPlayer();

  // Iniciar gravação
  void startRecording() async {
    await _recorder.openAudioSession();
    await _recorder.startRecorder(toFile: 'audio.aac');
  }

  // Parar gravação
  void stopRecording() async {
    await _recorder.stopRecorder();
    await _recorder.closeAudioSession();
  }

  // Reproduzir áudio
  void playAudio() async {
    await _player.openAudioSession();
    await _player.startPlayer(fromURI: 'audio.aac');
  }

  // Parar reprodução
  void stopAudio() async {
    await _player.stopPlayer();
    await _player.closeAudioSession();
  }
}
```

Para mais detalhes, você pode consultar a [documentação oficial do pacote](https://pub.dev/packages/flutter_sound).