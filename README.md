# Flutter Portfolio Starter

A premium, ultra-modern Flutter portfolio starter built with a clean feature-first architecture, smooth animations, responsive layouts, and reusable UI components.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

## Overview

This project is designed as a production-ready portfolio template for developers who want a polished, premium-looking personal site or app.

It includes:
- Animated hero section.
- Responsive sticky navigation.
- About, skills, services, projects, apps, and contact sections.
- Clean JSON-driven content structure.
- Reusable widgets and a scalable folder layout.

---

## Features

- Feature-first folder architecture.
- Responsive layout for mobile, tablet, desktop, and web.
- Premium hero animations with rotating avatar ring and typing text.
- Sticky navbar with smooth section scrolling.
- Animated skill bars and reveal effects.
- Portfolio sections for services, projects, apps, and contact.
- JSON-based content management.
- Reusable theme, widgets, helpers, and services.
- `go_router` based app routing.
- `provider` + `ChangeNotifier` state management.

---

## Tech Stack

- Flutter
- Dart
- Provider
- GoRouter
- url_launcher
- json_serializable
- build_runner
- flutter_animate
- animated_text_kit
- visibility_detector

---

## Folder Structure

```txt
flutter_portfolio_starter/
├── pubspec.yaml
├── assets/
│   ├── images/
│   └── data/
│       ├── profile.json
│       ├── projects.json
│       ├── services.json
│       ├── social_links.json
│       └── apps.json
└── lib/
    ├── main.dart
    ├── app/
    │   ├── app.dart
    │   ├── router/
    │   ├── theme/
    │   └── di/
    ├── core/
    │   ├── constants/
    │   ├── helpers/
    │   ├── services/
    │   ├── utils/
    │   └── widgets/
    ├── data/
    │   ├── models/
    │   ├── repositories/
    │   ├── sources/
    │   └── state/
    └── features/
        ├── shell/
        ├── hero/
        ├── about/
        ├── skills/
        ├── services/
        ├── projects/
        ├── apps/
        └── contact/
---

  ## Getting Started
Prerequisites
Flutter SDK 3.5+
Dart SDK 3.5+
Chrome or a supported emulator/device
Installation

git clone https://github.com/your-username/flutter_portfolio_starter.git
cd flutter_portfolio_starter
flutter pub get
dart run build_runner build --delete-conflicting-outputs
Run the app
flutter run -d chrome
Code Generation
This project uses json_serializable for model generation.
After editing any model file, run:
dart run build_runner build --delete-conflicting-outputs
Assets
Make sure these folders exist:
assets/images/
assets/data/
JSON files expected:
profile.json
projects.json
services.json
social_links.json
apps.json
Setup Notes
Update AppLinks with your own GitHub, LinkedIn, email, and portfolio URLs.
Replace placeholder images in assets/images/.
Update JSON data with your real profile, projects, services, and social links.
Replace demo text and links in the hero and project sections.
Screenshot
Add your screenshot here.

Build Commands
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run -d chrome
Contributing
Fork the repository.
Create a new branch.
Make your changes.
Run formatting and code generation.
Submit a pull request.

