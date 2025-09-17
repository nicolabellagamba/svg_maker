// flutter imports
import 'package:flutter/material.dart';
// external imports
import 'package:flutter_test/flutter_test.dart';
import 'package:svg_maker/src/models/svg_element.dart';

void main() {
  test('create a svg with a simple pattern', () {
    final Svg svg = Svg.create(width: '200', height: '200')
      ..addShape(
        SvgRect()
          ..x = '0'
          ..y = '0'
          ..width = '200'
          ..height = '100'
          ..fill = Colors.green,
      )
      ..addShape(
        SvgRect()
          ..x = '0'
          ..y = '100'
          ..width = '200'
          ..height = '100'
          ..fill = Colors.purple
          ..pathLength = 32,
      )
      ..addShape(
        SvgPolygon()
          ..fill = Colors.green
          ..addPoint(SvgPoint(x: 100, y: 0))
          ..addPoint(SvgPoint(x: 0, y: 200))
          ..addPoint(SvgPoint(x: 200, y: 200)),
      )
      ..addShape(
        SvgPolygon()
          ..fill = Colors.purple
          ..points = [SvgPoint(x: 0, y: 0), SvgPoint(x: 200, y: 0), SvgPoint(x: 100, y: 200)],
      )
      ..addShape(
        SvgPolygon()
          ..fill = Colors.green
          ..addPoints([SvgPoint(x: 100, y: 0), SvgPoint(x: 50, y: 100), SvgPoint(x: 150, y: 100)]),
      );

    expect(
      svg.toString(),
      '<svg width="200" height="200" xmlns="http://www.w3.org/2000/svg"><rect x="0" y="0" width="200" height="100" fill="#4CAF50FF" /><rect x="0" y="100" width="200" height="100" fill="#9C27B0FF" path-length="32" /><polygon fill="#4CAF50FF" points="100,0 0,200 200,200" /><polygon fill="#9C27B0FF" points="0,0 200,0 100,200" /><polygon fill="#4CAF50FF" points="100,0 50,100 150,100" /></svg>',
    );
  });

  test('create a svg with text', () {
    final Svg svg = Svg.create(width: '200', height: '100')
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

    expect(
      svg.toString(),
      '<svg width="200" height="100" xmlns="http://www.w3.org/2000/svg"><rect width="200" height="200" fill="#FF9800FF" /><text x="100" y="50" text-anchor="middle">test string</text></svg>',
    );
  });
}
