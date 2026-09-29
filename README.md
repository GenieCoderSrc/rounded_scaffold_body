# rounded_scaffold_body

A simple Flutter widget to create a beautifully rounded scaffold body with custom padding, background color, and shadow effects.

This widget, `RoundedScaffoldBody`, allows you to easily add a customizable container with rounded top corners to your app.

## Features

- Easily add top rounded corners to your scaffold body.
- Customize background color, padding, and corner radius.
- Add smooth shadows with adjustable spread, blur, and offset.
- Flexible design to fit different UI needs.

## Installation

Add the following to your `pubspec.yaml`:

```yaml
resolution: workspace

dependencies:
  rounded_scaffold_body: <latest_version>
```

Then run:

```bash
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:rounded_scaffold_body/rounded_scaffold_body.dart';
```

Example:

```dart
Scaffold(
  backgroundColor: Colors.blueAccent,
  body: RoundedScaffoldBody(
    child: Center(
      child: Text(
        'Hello, Rounded World!',
        style: TextStyle(fontSize: 24),
      ),
    ),
    bgColor: Colors.white,
    round: 40,
    shadowColor: Colors.black26,
    shadowSpreadRadius: 5,
    blurRadius: 10,
    offset: Offset(0, 4),
  ),
)
```

## Constructor Parameters

| Name                | Type                  | Description                                               |
|---------------------|------------------------|-----------------------------------------------------------|
| `child`             | `Widget`               | The content inside the rounded container.                |
| `round`             | `double?`              | Radius for the top corners (default: 50).                |
| `topPadding`        | `double?`              | Top padding inside the container (default: 4).           |
| `bgColor`           | `Color?`               | Background color of the container.                       |
| `shadowColor`       | `Color?`               | Color of the shadow.                                      |
| `shadowSpreadRadius`| `double?`              | Spread radius for the shadow (default: 5).               |
| `blurRadius`        | `double?`              | Blur radius for the shadow (default: 7).                 |
| `offset`            | `Offset?`              | Offset of the shadow (default: Offset(0, 3)).             |
| `padding`           | `EdgeInsetsGeometry?`  | Custom padding for the container.                        |

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feel free to open issues or contribute if you find ways to improve this widget!

## Author

Shohidul Islam