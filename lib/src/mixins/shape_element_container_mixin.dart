part of '../models/svg_element.dart';

/// Mixin that implements add shape/shapes to children list methods.
mixin ShapeElementContainerMixin on SvgElement {
  /// Adds a shape to children list.
  void addShape(ShapeElement shape) {
    _addChild(shape);
  }

  /// Adds shapes to children list.
  void addShapes(Iterable<ShapeElement> shapes) {
    _addChildren(shapes);
  }
}
