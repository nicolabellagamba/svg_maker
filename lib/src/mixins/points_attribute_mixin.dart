part of '../models/svg_element.dart';

mixin PointsAttributeMixin on SvgElement {
  /// Sets the list of points (pairs of x,y absolute coordinates) required to draw the polygon.
  set points(List<SvgPoint> points) {
    _attributes[SvgAttribute.points] = points.join(" ");
  }

  /// Add a point (pair of x,y absolute coordinate) to list.
  addPoint(SvgPoint point) {
    _attributes[SvgAttribute.points] = switch (!_attributes.containsKey(SvgAttribute.points) || _attributes[SvgAttribute.points] == null) {
      true => "$point",
      false => "${_attributes[SvgAttribute.points]} $point",
    };
  }

  /// Adds a list/set of points (pairs of x,y absolute coordinates) to list. 
  addPoints(Iterable<SvgPoint> points) {
    if (!_attributes.containsKey(SvgAttribute.points) || _attributes[SvgAttribute.points] == null) {
      _attributes[SvgAttribute.points] = "";
    }
    _attributes[SvgAttribute.points] += ((_attributes[SvgAttribute.points] as String).isNotEmpty ? " " : "") + points.join(" ");
  }
}
