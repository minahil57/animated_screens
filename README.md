# Animated Screens

A public Flutter showcase of beautiful animated UI screens made for social media. Clone it, run it, and add your own motion demos over time.

This is **not** a production app. It is a modular gallery where each screen is a self-contained GetX module you can film, iterate on, and share.

## Run

```bash
flutter pub get
flutter run
```

Smoke test:

```bash
flutter test
```

## What's inside

- **GetX** modules, routes, and bindings for clean navigation
- A dark gallery home that lists every demo
- One starter demo (`Sample Fade`) using `flutter_animate`
- Asset folders ready for Lottie, Rive, and images
- A checklist for adding new screens: [`docs/ADDING_A_SCREEN.md`](docs/ADDING_A_SCREEN.md)

## Project structure

```text
lib/
  main.dart
  app/                  # GetMaterialApp, theme, routes, initial binding
  core/                 # constants / utils
  data/models/          # ScreenDemoModel and future shared models
  modules/
    home/               # gallery list
    demos/              # one folder per animated screen
  shared/widgets/       # reusable animation wrappers
assets/
  animations/lottie/
  rive/
  images/
```

## How to add a new animated screen

1. Create a module under `lib/modules/demos/<your_demo>/` with `bindings/`, `controllers/`, and `views/`.
2. Add a route name in `lib/app/routes/app_routes.dart`.
3. Register a `GetPage` in `lib/app/routes/app_pages.dart`.
4. Append a `ScreenDemoModel` entry in `HomeController` so it appears in the gallery.
5. Drop any Lottie/Rive/image assets into the matching `assets/` folder (already registered in `pubspec.yaml`).

Full checklist: [`docs/ADDING_A_SCREEN.md`](docs/ADDING_A_SCREEN.md).

## Dependencies

| Package | Role |
| --- | --- |
| `get` | State management, routing, bindings |
| `lottie` | Lottie JSON animations |
| `rive` | Rive interactive animations |
| `animations` | Material motion helpers |
| `flutter_animate` | Declarative widget animations |
| `simple_animations` | Timeline / custom animation helpers |
| `animated_text_kit` | Text motion effects |
| `shimmer` | Loading / highlight shimmer |
| `flutter_staggered_animations` | Staggered list / grid entrances |
| `cupertino_icons` | iOS-style icons |

## Contributing

Pull requests with new demos are welcome. Keep each screen modular, avoid unrelated app features (auth, APIs, etc.), and prefer polished motion that reads well on social media.

## License

Released under the [MIT License](LICENSE). Copyright (c) 2026 Animated Screens Contributors.
