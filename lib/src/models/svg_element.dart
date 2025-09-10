// dart imports
import 'dart:ui';

// internal imports
import 'package:svg_maker/src/enums/font_style_value.dart';
import 'package:svg_maker/src/enums/svg_attribute.dart';
import 'package:svg_maker/src/enums/text_anchor_value.dart';
import 'package:svg_maker/src/extensions/color_extension.dart';
import 'package:svg_maker/src/models/svg_point.dart';
import 'package:svg_maker/src/utils/svg_default_values.dart';

// mixins - elements
part '../mixins/animation_element_container_mixin.dart';
// mixins
// mixins - attributes
part '../mixins/attributes/coordinate_attributes_mixin.dart';
part '../mixins/attributes/fill_attribute_mixins.dart';
part '../mixins/attributes/stroke_attribute_mixins.dart';
part '../mixins/descriptive_element_container_mixin.dart';
part '../mixins/points_attribute_mixin.dart';
part '../mixins/shape_element_container_mixin.dart';
part '../mixins/text_content_element_mixin.dart';
// models
part './animation_elements.dart';
part './descriptive_elements.dart';
part './shape_elements.dart';
part './text_content_elements.dart';

abstract class SvgElement {
  final Map<SvgAttribute, dynamic> _attributes = {};

  final List<dynamic> _children = [];

  void _addChild(dynamic child) {
    if (child is SvgElement || child is String) {
      _children.add(child);
    }
  }

  String get name;

  /// Sets the style of the element using CSS declarations.
  set style(String style) {
    _attributes[SvgAttribute.style] = style;
  }

  void _stringifyAttributes(StringBuffer sBuffer) {
    for (final MapEntry<SvgAttribute, dynamic> attribute in _attributes.entries.where((MapEntry<SvgAttribute, dynamic> attribute) => null != attribute.value)) {
      sBuffer.write(' ${attribute.key.attribute}="${attribute.value}"');
    }
  }

  void stringify(StringBuffer sBuffer) {
    sBuffer.write('<$name');
    final bool isAttributesNotEmpty = _attributes.entries.where((MapEntry<SvgAttribute, dynamic> attribute) => null != attribute.value).isNotEmpty;
    if (isAttributesNotEmpty) {
      _stringifyAttributes(sBuffer);
    }

    if (_children.isNotEmpty) {
      sBuffer.write('>');
      for (final dynamic element in _children) {
        if (element is SvgElement) {
          element.stringify(sBuffer);
        } else if (element is String) {
          sBuffer.write(element);
        }
      }
      sBuffer.write('</$name>');
    } else {
      if (isAttributesNotEmpty) {
        sBuffer.write(' ');
      }
      sBuffer.write('/>');
    }
  }
}

class Svg extends SvgElement with ShapeElementContainerMixin, TextContentElementMixin {
  @override
  String get name => "svg";

  Svg();

  factory Svg.create({String? width, String? height}) {
    final Svg svg = Svg();

    svg.width = width ?? SvgDefaultValues.auto;
    svg.height = height ?? SvgDefaultValues.oneHundredPercent;
    svg.xmlns = SvgDefaultValues.xmlnsDefaultValue;

    return svg;
  }

  /// Sets the horizontal length for the rendering area of the SVG viewport.
  set width(String width) {
    _attributes[SvgAttribute.width] = width;
  }

  /// Sets the vertical length of an element in the user coordinate system.
  set height(String height) {
    _attributes[SvgAttribute.height] = height;
  }

  set xmlns(String xmlns) {
    _attributes[SvgAttribute.xmlns] = xmlns;
  }

  @override
  String toString() {
    final StringBuffer sBuffer = StringBuffer();

    stringify(sBuffer);

    return sBuffer.toString();
  }
}
