part of '../../models/svg_element.dart';

mixin PresentationFillAttributeMixin on SvgElement {
  /// Sets color used to paint the element.
  set fill(Color fill) {
    _attributes[SvgAttribute.fill] = fill.toHex();
  }
}

// TODO include in Animate, AnimateMotion, AnimateTransform and Set classes.
mixin FinalAnimationStateFillAttributeMixin on SvgElement {
  /// Sets final state of animation.
  set fill(String fill) {
    _attributes[SvgAttribute.fill] = fill;
  }
}
