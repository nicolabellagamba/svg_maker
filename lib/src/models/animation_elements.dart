part of './svg_element.dart';

// TODO animation elements.
sealed class AnimationElement extends SvgElement {}

class SvgAnimate extends AnimationElement {
  @override
  String get name => 'animate';
}

class SvgAnimateMotion extends AnimationElement {
  @override
  String get name => 'animatemotion';
}

class SvgAnimateTransform extends AnimationElement {
  @override
  String get name => 'animatetransform';
}

class SvgMpath extends AnimationElement {
  @override
  String get name => 'mpath';
}

class SvgSet extends AnimationElement {
  @override
  String get name => 'set';
}
