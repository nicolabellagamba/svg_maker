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

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

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

```dart

```



## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
