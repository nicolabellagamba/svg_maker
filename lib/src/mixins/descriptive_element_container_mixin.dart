part of '../models/svg_element.dart';

mixin DescriptiveElementContainerMixin on SvgElement {
  void addDescriptive(DescriptiveElement descriptive) {
    _addChild(descriptive);
  }
}