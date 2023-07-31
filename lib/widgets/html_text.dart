import 'package:flutter/material.dart';
import 'package:html/parser.dart' as htmlparser;
import 'package:html/dom.dart' as dom;

class HtmlText extends StatelessWidget {
  final String data;
  final int? maxLines;
  final TextOverflow overflow;
  final double textScaleFactor;
  final TextAlign textAlign;
  final TextDirection? textDirection;

  const HtmlText(
    this.data, {
    this.maxLines,
    this.overflow = TextOverflow.clip,
    this.textScaleFactor = 1.0,
    this.textAlign = TextAlign.start,
    this.textDirection,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: _convertHtmlToTextSpan(data),
      maxLines: maxLines,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }

  TextSpan _convertHtmlToTextSpan(String html) {
    final dom.Document document = htmlparser.parse(
        html.replaceAll('\r\n', '').replaceAll('\n', '').replaceAll('\r', ''));
    return _convertNodeToTextSpan(document.body!);
  }

  TextSpan _convertNodeToTextSpan(dom.Node node) {
    if (node is dom.Element) {
      List<TextSpan> spans = [];
      for (var n in node.nodes) {
        spans.add(_convertNodeToTextSpan(n));
      }

      switch (node.localName) {
        case 'b':
        case 'strong':
          return TextSpan(
            children: spans,
            style: TextStyle(fontWeight: FontWeight.bold),
          );
        case 'i':
        case 'em':
          return TextSpan(
            children: spans,
            style: TextStyle(fontStyle: FontStyle.italic),
          );
        case 'u':
          return TextSpan(
            children: spans,
            style: TextStyle(decoration: TextDecoration.underline),
          );
        case 'br':
          return TextSpan(text: '\n');
        default:
          return TextSpan(children: spans);
      }
    } else if (node is dom.Text) {
      return TextSpan(text: node.text);
    } else {
      return TextSpan();
    }
  }
}
