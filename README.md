<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

Flutter package that helps with svg creation.

[![pub package](https://img.shields.io/pub/v/svg_maker.svg)](https://pub.dartlang.org/packages/svg_maker)

## Usage

```dart
    final Svg svg = Svg.create(width: "200", height: "100")
      ..addShape(
        SvgRect()
          ..width = '200'
          ..height = '200'
          ..fill = Colors.orange,
      )
      ..addText(
        SvgText()
          ..addString('test string')
          ..x = '100'
          ..y = '50'
          ..textAnchor = TextAnchorValue.middle,
      );

```

<p>
    <img src="https://github.com/nicolabellagamba/svg_maker/tree/main/doc/svg_with_text.svg"
    alt="Simple svg with text" height="400"/>
</p>
