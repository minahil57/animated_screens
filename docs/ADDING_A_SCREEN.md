# Adding a new animated screen

Use this checklist whenever you contribute a demo.

## Checklist

1. **Create the module folder**
   ```text
   lib/modules/demos/<demo_name>/
     bindings/<demo_name>_binding.dart
     controllers/<demo_name>_controller.dart
     views/<demo_name>_view.dart
     widgets/   # optional, if the view grows
   ```

2. **Add a route constant** in `lib/app/routes/app_routes.dart`
   ```dart
   static const myDemo = '/demos/my-demo';
   ```

3. **Register the page** in `lib/app/routes/app_pages.dart`
   ```dart
   GetPage(
     name: AppRoutes.myDemo,
     page: () => const MyDemoView(),
     binding: MyDemoBinding(),
   ),
   ```

4. **List it in the gallery** via `HomeController.demos`
   ```dart
   ScreenDemoModel(
     id: 'my_demo',
     title: 'My Demo',
     subtitle: 'Short social-friendly description',
     route: AppRoutes.myDemo,
     tags: ['fade', 'lottie'],
   ),
   ```

5. **Add assets if needed** under `assets/animations/lottie/`, `assets/rive/`, or `assets/images/` (folders are already declared in `pubspec.yaml`).

6. **Run**
   ```bash
   flutter analyze
   flutter test
   flutter run
   ```

## Tips

- Keep controllers thin; put visual polish in the view / widgets.
- Prefer public widgets over large private helpers in the view.
- Film-friendly: dark backgrounds, clear focal motion, few competing elements.
- Reuse `shared/widgets/` when an entrance pattern is useful across demos.
