part of './svg_element.dart';

sealed class TextContentElement extends SvgElement with PresentationFillAttributeMixin, CommonStrokeAttributesMixin {
  /// Sets font family that will be used to render the text.
  set fontFamily(String fontFamily) {
    _attributes[SvgAttribute.fontFamily] = fontFamily;
  }

  /// Sets the size of the font from baseline to baseline.
  set fontSize(String fontSize) {
    _attributes[SvgAttribute.fontSize] = fontSize;
  }

  /// Sets an aspect value for an element that will preserve
  /// the x-height of the first choice font in a substitute font.
  set fontSizeAdjust(String fontSizeAdjust) {
    _attributes[SvgAttribute.fontSizeAdjust] = fontSizeAdjust;
  }

  /// Sets style used to render text (normal, italic, or oblique).
  set fontStyle(FontStyleValue fontStyle) {
    _attributes[SvgAttribute.fontStyle] = fontStyle.name;
  }

  /// Sets variations of the font's glyphs used to render text.
  set fontVariant(String fontVariant) {
    _attributes[SvgAttribute.fontVariant] = fontVariant;
  }

  /// Sets boldness or lightness of the glyphs used to render the text.
  set fontWeight(String fontWeight) {
    _attributes[SvgAttribute.fontWeight] = fontWeight;
  }

  /// Sets the alignment of a string of pre-formatted text.
  set textAnchor(TextAnchorValue textAnchor) {
    _attributes[SvgAttribute.textAnchor] = textAnchor.name;
  }
}

class SvgText extends TextContentElement with CoordinateAttributesMixin {
  @override
  String get name => 'text';

  void addString(String string) {
    _addChild(string);
  }

  void addTspan(SvgTspan tspan) {
    _addChild(tspan);
  }

  void addTextPath(SvgTextPath textPath) {
    _addChild(textPath);
  }
}

sealed class TextContentChildElement extends TextContentElement {}

class SvgTspan extends TextContentChildElement {
  @override
  String get name => 'tspan';
}

class SvgTextPath extends TextContentChildElement {
  @override
  String get name => 'textPath';
}
