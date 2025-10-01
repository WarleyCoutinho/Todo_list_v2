# Todo List V2 Flutter 📝

Um aplicativo Flutter para gerenciamento de tarefas desenvolvido com arquitetura limpa e dados da API JSONPlaceholder.

## 📱 Sobre o Projeto

Este é um aplicativo Todo List desenvolvido em Flutter que consome dados da API JSONPlaceholder para exibir e gerenciar uma lista de tarefas. O projeto foi estruturado seguindo princípios de arquitetura limpa com separação clara entre domínio, dados e interface do usuário.

## ✨ Características

- **Lista de Tarefas**: Interface intuitiva para visualizar tarefas com status de conclusão
- **API Integration**: Consome dados reais da API JSONPlaceholder
- **Arquitetura Limpa**: Código organizado em camadas (Domain, Data, UI)
- **Gerenciamento de Estado**: Utiliza ValueNotifier para controle de estado reativo
- **Testes Unitários**: Cobertura de testes para controllers e repositories
- **Interface Responsiva**: Design Material Design adaptado para diferentes dispositivos
- **Tratamento de Erros**: Sistema robusto de tratamento de erros com retry automático

## 🏗️ Arquitetura

O projeto segue uma arquitetura limpa com separação clara de responsabilidades:

```
lib/
├── app/
│   ├── data/
│   │   └── repositories/
│   │       └── todo_repositories.dart       # Camada de dados
│   ├── domain/
│   │   └── models/
│   │       └── todo_model.dart              # Modelos de domínio
│   └── ui/
│       └── todo/
│           ├── controllers/
│           │   └── todo_controller.dart     # Lógica de negócio
│           └── widgets/
│               └── todo_page.dart           # Interface do usuário
├── app.dart                                 # Configuração do app
└── main.dart                               # Ponto de entrada

test/
├── app/
│   ├── data/
│   │   └── repositories/
│   │       └── todo_repositories_test.dart  # Testes do repository
│   └── ui/
│       └── todo/
│           └── controller/
│               └── todo_controller_test.dart # Testes do controller
└── widget_test.dart                         # Testes de widget
```

### Camadas da Arquitetura:

- **Domain**: Contém os modelos de dados e regras de negócio
- **Data**: Responsável pela comunicação com APIs externas e persistência
- **UI**: Interface do usuário, widgets e controllers

## 🚀 Como Executar

### Pré-requisitos

- Flutter SDK ^3.9.2
- Dart SDK
- Android Studio / VS Code
- Conexão com internet (para consumir a API)

### Instalação

1. Clone o repositório:

```bash
git clone [https://github.com/WarleyCoutinho/Todo_list_v2.git]
cd todo_list_v2
```

2. Instale as dependências:

```bash
flutter pub get
```

3. Execute o aplicativo:

```bash
flutter run
```

### Executar Testes

Para executar todos os testes:

```bash
flutter test
```

Para executar testes específicos:

```bash
# Testes do controller
flutter test test/app/ui/todo/controller/todo_controller_test.dart

# Testes do repository
flutter test test/app/data/repositories/todo_repositories_test.dart
```

## 🌐 API Integration

O aplicativo consome dados da [JSONPlaceholder API](https://jsonplaceholder.typicode.com/):

- **Endpoint**: `https://jsonplaceholder.typicode.com/todos`
- **Método**: GET
- **Retorna**: Lista de 200 tarefas com informações de usuário, título e status

### Estrutura dos Dados:

```json
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
```

## 🧪 Testes

O projeto inclui testes unitários que cobrem:

- **Repository Tests**: Validação da comunicação com a API
- **Controller Tests**: Verificação dos estados e lógica de negócio
- **Widget Tests**: Testes básicos da interface do usuário

### Estados Testados:

- ✅ Estado inicial (`TodoState.start`)
- ⏳ Estado de carregamento (`TodoState.loading`)
- ✅ Estado de sucesso (`TodoState.success`)
- ❌ Estado de erro (`TodoState.error`)

## 📦 Dependências Principais

```yaml
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.9.0 # Cliente HTTP para API calls
  cupertino_icons: ^1.0.8 # Ícones iOS

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0 # Análise de código
```

## 🎯 Funcionalidades Implementadas

- [x] Listagem de tarefas da API
- [x] Exibição do status de conclusão
- [x] Indicadores visuais (ícones de status)
- [x] Sistema de refresh/reload
- [x] Tratamento de erros com retry
- [x] Loading states
- [x] Testes unitários
- [x] Arquitetura limpa

## 🔮 Melhorias Futuras

- [ ] Adicionar funcionalidade de criar novas tarefas
- [ ] Implementar edição de tarefas existentes
- [ ] Adicionar persistência local (SQLite/Hive)
- [ ] Implementar filtragem e busca
- [ ] Adicionar animações e transições
- [ ] Implementar modo offline
- [ ] Adicionar temas claro/escuro

## 🤝 Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para:

1. Fazer um fork do projeto
2. Criar uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abrir um Pull Request

## 📱 Plataformas Suportadas

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## ✏️ Autor

**Warley Coutinho**

- GitHub: [@WarleyCoutinho](https://github.com/WarleyCoutinho)
- LinkedIn: [Warley Coutinho](https://www.linkedin.com/in/coutinho-warley/)

---

## 🌟 Mostre seu apoio

Dê uma ⭐️ se este projeto te ajudou!
