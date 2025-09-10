part of './svg_element.dart';

/// Base shape element class.
sealed class ShapeElement extends SvgElement {
  /// Sets the total length of the shape.
  set pathLength(num pathLength) {
    _attributes[SvgAttribute.pathLength] = pathLength;
  }
}

/// Class used to draw circles based on a center point and a radius.
class SvgCircle extends ShapeElement with PresentationFillAttributeMixin, CommonStrokeAttributesMixin {
  @override
  String get name => 'circle';

  /// Sets the x-axis coordinate of the center of the circle.
  set cx(String cx) {
    _attributes[SvgAttribute.cx] = cx;
  }

  /// Sets the y-axis coordinate of the center of the circle.
  set cy(String cy) {
    _attributes[SvgAttribute.cy] = cy;
  }

  /// Sets the radius of the circle.
  set r(String r) {
    _attributes[SvgAttribute.r] = r;
  }
}

/// Class used to draw ellipses based on a center coordinate,
/// and both their x and y radius.
class SvgEllipse extends ShapeElement with PresentationFillAttributeMixin, CommonStrokeAttributesMixin {
  @override
  String get name => 'ellipse';

  /// Sets the x-axis coordinate of the center of the ellipse.
  set cx(String cx) {
    _attributes[SvgAttribute.cx] = cx;
  }

  /// Sets the y-axis coordinate of the center of the ellipse.
  set cy(String cy) {
    _attributes[SvgAttribute.cy] = cy;
  }

  /// Sets the radius of the ellipse on the x axis.
  set rx(String rx) {
    _attributes[SvgAttribute.rx] = rx;
  }

  /// Sets the radius of the ellipse on the y axis.
  set ry(String ry) {
    _attributes[SvgAttribute.ry] = ry;
  }
}

/// Class used to draw a line connecting two points.
class SvgLine extends ShapeElement with CommonStrokeAttributesMixin {
  @override
  String get name => 'line';

  /// Sets the x-axis coordinate of the line starting point.
  set x1(String x1) {
    _attributes[SvgAttribute.x1] = x1;
  }

  /// Sets the x-axis coordinate of the line ending point.
  set x2(String x2) {
    _attributes[SvgAttribute.x2] = x2;
  }

  /// Sets the y-axis coordinate of the line starting point.
  set y1(String y1) {
    _attributes[SvgAttribute.y1] = y1;
  }

  /// Sets the y-axis coordinate of the line ending point.
  set y2(String y2) {
    _attributes[SvgAttribute.y2] = y2;
  }
}

/// Class used to draw a generic shape.
/// All the basic shapes can be created with a path element.
class SvgPath extends ShapeElement with PresentationFillAttributeMixin, CommonStrokeAttributesMixin {
  @override
  String get name => 'path';

  /// Sets the shape of the path.
  set d(String d) {
    _attributes[SvgAttribute.d] = d;
  }
}

/// Class used to draw a closed shape consisting of a set of connected straight line segments.
/// The last point is connected to the first point.
class SvgPolygon extends ShapeElement with PointsAttributeMixin, PresentationFillAttributeMixin, CommonStrokeAttributesMixin {
  @override
  String get name => 'polygon';
}

/// Class used to draw open shapes as the last point doesn't have to be connected to the first point.
class SvgPolyline extends ShapeElement with PointsAttributeMixin, PresentationFillAttributeMixin, CommonStrokeAttributesMixin {
  @override
  String get name => 'polyline';
}

/// Class used to draw rectangles, defined by their position, width, and height.
class SvgRect extends ShapeElement with AnimationElementContainerMixin, PresentationFillAttributeMixin, CommonStrokeAttributesMixin, CoordinateAttributesMixin {
  @override
  String get name => 'rect';

  /// Sets the width of the rect.
  set width(String width) {
    _attributes[SvgAttribute.width] = width;
  }

  /// Sets the height of the rect.
  set height(String height) {
    _attributes[SvgAttribute.height] = height;
  }

  /// Sets the horizontal corner radius of the rect.
  set rx(String rx) {
    _attributes[SvgAttribute.rx] = rx;
  }

  /// Sets the vertical corner radius of the rect.
  set ry(String ry) {
    _attributes[SvgAttribute.ry] = ry;
  }
}
