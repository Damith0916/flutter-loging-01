# Login Page Flutter App

This is a simple Flutter project for a login page UI with animated elements and custom text fields.

## Features
- Animated fade-in effects using `simple_animations`.
- Custom reusable text field widget with prefix and password visibility toggle.
- Responsive layout with background and decorative images.
- Modern UI with gradients and custom styling.

## Project Structure
```
lib/
  main.dart                # App entry point
  home_page.dart           # Main login page UI
  componets/
    text_filed.dart        # Custom text field widget
  Animation/
    FadeAnimation.dart     # Fade-in animation widget
assets/
  images/                  # Background and decorative images
    background.png
    clock.png
    light-1.png
    light-2.png
pubspec.yaml               # Project configuration and dependencies
```

## Dependencies
- [Flutter](https://flutter.dev/) (SDK ^3.7.2)
- [simple_animations](https://pub.dev/packages/simple_animations) (^5.0.0)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons) (^1.0.8)

## Getting Started
1. **Clone the repository**
2. **Install dependencies**
   ```sh
   flutter pub get
   ```
3. **Run the app**
   ```sh
   flutter run
   ```

## Assets
All images used in the UI are located in `assets/images/` and are referenced in `pubspec.yaml`.

## Custom Widgets
- **FadeAnimation**: Handles fade-in and slide-up animation for child widgets.
- **TextFiled**: Custom text field supporting prefix icons and password visibility toggle.

## License
This project is for educational/demo purposes.
