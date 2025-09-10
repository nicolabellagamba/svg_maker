part of '../../models/svg_element.dart';

mixin CoordinateAttributesMixin on SvgElement {
  /// Sets x-axis coordinate in the user coordinate system.
  set x(String x) {
    _attributes[SvgAttribute.x] = x;
  }

  // Sets y-axis coordinate in the user coordinate system.
  set y(String y) {
    _attributes[SvgAttribute.y] = y;
  }
}
