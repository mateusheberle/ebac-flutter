# Emular app no celular sem cabo

## Celular:

### 1. Configurações
1. “Sistemas”
2. “Opções do desenvolvedor”
3. Ativar “Depuração USB”

### 2. Configurações
1. “Rede e internet”
2. “Wi-Fi”
3. “Denise 2G”
4. Copiar “Endereço IP”

## Windows:

### 3. Android Studio
1. “SDK Manager”
2. “Appearance & Behavior”
3. “System Settings”
4. “Android SDK”
5. Copiar caminho do sdk
    - exemplo: C:\Users\User\AppData\Local\Android\Sdk
6. Acessar C:\Users\User\AppData\Local\Android\Sdk\platform-tools
    - deve ter “adb.exe” nessa pasta
7. Colocar o caminho nas variáveis de ambiente:
    - “Path”
    - C:\Users\User\AppData\Local\Android\Sdk\platform-tools

### 4. Conectar o celular via cabo no windows

### 5. Terminal
```sh
adb tcpip 5555
```
```sh
adb connect 192.168.1.2
```
ou
```sh
adb connect 192.168.1.2:5555
```