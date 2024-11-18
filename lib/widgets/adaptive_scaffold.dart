import 'package:flutter/material.dart';

final _key = GlobalKey();

class AdaptiveScaffold extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget body;
  final Widget sidePanel;

  const AdaptiveScaffold({
    super.key,
    required this.appBar,
    required this.body,
    required this.sidePanel,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1000) {
          return Scaffold(
            key: _key,
            appBar: appBar,
            body: body,
            drawer: sidePanel,
          );
        } else {
          return Row(
            children: [
              sidePanel,
              Expanded(
                child: Scaffold(
                  appBar: appBar,
                  body: body,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
