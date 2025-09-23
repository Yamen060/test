# Copilot Instructions for AI Agents

## Project Overview
- This is a Flutter application with a modular structure under `lib/`.
- Major features are organized in `lib/features/` (e.g., `home`, `login`, `onbording`, `test`).
- Core utilities, theming, DI, and widgets are in `lib/core/`.
- The app uses `flutter_screenutil` for responsive sizing and a custom theming system in `core/theming/colors.dart`.

## Key Patterns & Conventions
- **Widgets:** Custom widgets (e.g., `AppTextButton`) are stateless and accept style/behavior via constructor params. Use `ScreenUtil` for sizing.
- **Theming:** Colors and styles are centralized in `core/theming/colors.dart`.
- **Dependency Injection:** DI helpers are in `core/di/`.
- **Networking:** Place API logic in `core/networking/`.
- **Routing:** Navigation logic is in `core/routing/`.
- **Assets:** Images and SVGs are in `assets/images/` and `assets/svgs/`.

## Developer Workflows
- **Build:** Use `flutter build <platform>` (e.g., `flutter build apk`).
- **Run:** Use `flutter run` for local development.
- **Test:** Place tests in `test/` and run with `flutter test`.
- **Splash Screen:** Configured via `flutter_native_splash.yaml`.
- **Screen Util:** Initialize `ScreenUtil` in the app root for responsive UI.

## Integration Points
- **External Packages:**
  - `flutter_screenutil` for responsive design
  - `flutter_native_splash` for splash screen
  - `shared_preferences` for local storage (see `shared_preferences_android/`)
- **Platform Support:** Android, iOS, web, macOS, Windows, Linux (see platform folders)

## Examples
- To create a custom button, see `lib/core/widgets/app_text_button.dart`.
- To add a new feature, create a folder in `lib/features/` and follow the existing structure.
- To update theming, edit `lib/core/theming/colors.dart`.

## Project Structure Reference
- `lib/` — Main Dart code
- `assets/` — Images and SVGs
- `test/` — Unit/widget tests
- `android/`, `ios/`, `web/`, `macos/`, `windows/`, `linux/` — Platform-specific code

---
For more details, see `README.md` or ask for specific workflow examples.
