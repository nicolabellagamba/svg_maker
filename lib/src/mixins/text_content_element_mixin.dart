part of '../models/svg_element.dart';

mixin TextContentElementMixin on SvgElement {
  void addText(SvgText text) {
    _addChild(text);
  }
}
