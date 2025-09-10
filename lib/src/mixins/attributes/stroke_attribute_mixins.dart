part of '../../models/svg_element.dart';

mixin CommonStrokeAttributesMixin on SvgElement {
  /// Sets color used to paint the outline of the shape.
  set stroke(Color stroke) {
    _attributes[SvgAttribute.stroke] = stroke.toHex();
  }

  /// Sets the pattern of dashes and gaps used to paint the outline of the shape.
  set strokeDasharray(List<int> strokeDasharray) {
    _attributes[SvgAttribute.strokeDasharray] = strokeDasharray.join(' ');
  }

  /// Sets the offset on the rendering of the associated dash array.
  set strokeDashoffset(String strokeDashoffset) {
    _attributes[SvgAttribute.strokeDashoffset] = strokeDashoffset;
  }

  // Sets the opacity of the paint server applied to the stroke of a shape.
  set strokeOpacity(String strokeOpacity) {
    _attributes[SvgAttribute.strokeOpacity] = strokeOpacity;
  }

  // Sets the width of the stroke to be applied to the shape.
  set strokeWidth(String strokeWidth) {
    _attributes[SvgAttribute.strokeWidth] = strokeWidth;
  }
}
