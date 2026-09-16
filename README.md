<div align="center">

# TikTok Clone

**Recriação da interface do TikTok em Flutter** — feed vertical de vídeos, player em tela cheia
e seleção de mídia pela câmera ou galeria.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)

</div>

---

## Sobre o projeto

Aplicativo mobile desenvolvido em **Flutter** que reproduz a experiência de navegação do TikTok:
vídeos em tela cheia, rolagem vertical entre publicações, barra lateral de interações e navegação
por abas na base da tela.

O foco do projeto foi a **construção da interface e da experiência de navegação** — a parte mais
característica do app original e a mais desafiadora de reproduzir com fidelidade: sincronizar o
ciclo de vida do player de vídeo com a rolagem, manter a reprodução fluida na troca de página e
montar a sobreposição de informações sem atrapalhar o conteúdo.

<!-- Para deixar o README ainda melhor, tire um print ou grave um GIF do app rodando,
     salve como docs/preview.gif no repositório e descomente a linha abaixo:
![Preview do aplicativo](docs/preview.gif)
-->

## Funcionalidades

| Funcionalidade | Status |
| --- | --- |
| Feed vertical com rolagem entre vídeos | ✅ Implementado |
| Player de vídeo em tela cheia com reprodução automática | ✅ Implementado |
| Barra lateral de interações (perfil, curtir, comentar, compartilhar) | ✅ Implementado |
| Navegação por abas com ícone central de publicação | ✅ Implementado |
| Seleção de vídeo pela galeria ou câmera | ✅ Implementado |
| Tela de confirmação antes de publicar | ✅ Implementado |
| Telas de login e cadastro | 🎨 Interface pronta |
| Autenticação com Firebase | 🚧 Em desenvolvimento |
| Curtidas e comentários persistidos | 🚧 Em desenvolvimento |
| Telas de busca, notificações e perfil | 🚧 Em desenvolvimento |

## Tecnologias

- **Flutter** e **Dart** — construção da interface e da lógica do app
- **video_player** — reprodução dos vídeos em tela cheia
- **image_picker** — acesso à câmera e à galeria do dispositivo
- **GetX** — gerenciamento de estado e navegação
- **Firebase** (Auth, Firestore e Storage) — backend previsto para autenticação e persistência

## Estrutura do projeto

```
lib/
├── constants.dart              # Paleta de cores e lista de abas da navegação
├── firebase_options.dart       # Configuração do Firebase
├── controllers/
│   └── likes_controller.dart   # Lógica de curtidas
└── views/
    ├── screens/
    │   ├── home_screen.dart        # Casca do app, com a navegação inferior
    │   ├── video_screen.dart       # Feed vertical de vídeos
    │   ├── add_video_screen.dart   # Escolha entre câmera e galeria
    │   ├── confirm_screen.dart     # Pré-visualização antes de publicar
    │   ├── comment_screen.dart     # Comentários da publicação
    │   └── auth/
    │       ├── login_screen.dart
    │       └── signup_screen.dart
    └── widgets/
        ├── video_player_item.dart  # Player de um vídeo do feed
        ├── circle_animation.dart   # Animação do disco de música
        ├── custom_icon.dart        # Ícone customizado da aba central
        └── text_input_field.dart   # Campo de texto reutilizável
```

## Como rodar

**Pré-requisitos:** [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado e um
emulador Android/iOS configurado ou um dispositivo físico conectado.

```bash
# Clone o repositório
git clone https://github.com/Leticianarc/tiktok_tutorial.git
cd tiktok_tutorial

# Instale as dependências
flutter pub get

# Execute
flutter run
```

Os vídeos de demonstração já acompanham o projeto na pasta `assets/`, então o feed funciona
sem nenhuma configuração adicional.

## O que aprendi

- Controlar o **ciclo de vida de players de vídeo** dentro de uma lista rolável, inicializando e
  liberando recursos na troca de página para não acumular consumo de memória
- Montar layouts sobrepostos com `Stack` e `Positioned`, posicionando a interface sobre o vídeo
  sem bloquear o conteúdo
- Usar `PageView` com rolagem vertical para reproduzir a navegação característica do app
- Integrar **recursos nativos do dispositivo** (câmera e galeria) através do `image_picker`
- Organizar o projeto separando telas, widgets reutilizáveis e controladores

## Próximos passos

- [ ] Inicializar o Firebase e conectar as telas de login e cadastro
- [ ] Persistir curtidas e comentários no Firestore
- [ ] Publicar vídeos enviados pelo usuário no Firebase Storage
- [ ] Construir as telas de busca, notificações e perfil

---

<div align="center">

Desenvolvido por **[Letícia Narciso](https://github.com/Leticianarc)** ·
[LinkedIn](https://www.linkedin.com/in/leticianarciso/)

</div>
