part of './svg_element.dart';

// TODO descriptive elements.
sealed class DescriptiveElement extends SvgElement {
}

class SvgDesc extends DescriptiveElement {
  @override
  String get name => 'desc';
}

class SvgMetadata extends DescriptiveElement {
  @override
  String get name => 'metadata';
}

class SvgTitle extends DescriptiveElement {
  @override
  String get name => 'title';
}




