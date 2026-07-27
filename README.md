# flutter_clean_starter_cli

[![pub package](https://img.shields.io/pub/v/flutter_clean_starter_cli.svg)](https://pub.dev/packages/flutter_clean_starter_cli)
[![Build Status](https://img.shields.io/github/actions/workflow/status/lekthedeveloper/flutter_clean_starter_cli/ci.yml?branch=main)](https://github.com/lekthedeveloper/flutter_clean_starter_cli)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://dart.dev)

A global Dart CLI tool for instantly scaffolding production-ready **Flutter Clean Architecture** projects pre-configured with **Riverpod 2.0**, **GoRouter**, and **Dio**.

---

## 🚀 Installation & Setup

Activate globally via pub:

```bash
dart pub global activate flutter_clean_starter_cli
```

---

## ⚡ Usage

To generate a new feature-first Flutter project:

```bash
flutter_clean_cli --name my_awesome_app
```

Or using the full executable name:

```bash
flutter_clean_starter_cli --name my_awesome_app --output ./projects
```

---

## 📂 Generated Directory Architecture

```
my_awesome_app/
├── .github/
│   └── workflows/
│       └── ci.yml
├── lib/
│   ├── core/
│   │   ├── constants/
│   │   ├── network/
│   │   ├── router/
│   │   │   └── app_router.dart
│   │   ├── theme/
│   │   └── utils/
│   ├── features/
│   │   └── home/
│   │       ├── data/
│   │       │   ├── models/
│   │       │   └── repositories/
│   │       ├── domain/
│   │       │   ├── repositories/
│   │       │   └── usecases/
│   │       └── presentation/
│   │           ├── controllers/
│   │           ├── views/
│   │           └── widgets/
│   └── main.dart
└── pubspec.yaml
```

---

## 📄 License

MIT License - Developed with ❤️ by [Olamilekan Adeyemi (@lekthedeveloper)](https://github.com/lekthedeveloper).
