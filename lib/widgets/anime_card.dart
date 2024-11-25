import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/widgets/image.dart';

_LeftSideState? _currentlyActive;

class AnimeCard extends ConsumerWidget {
  final String imageTag;
  final String? imageUrl;
  final bool imageZoomable;
  final String? title;
  final String? subtitle;
  final List<Widget> actions;
  final Function()? onTap;
  final Widget Function()? contextMenuBuilder;
  final double? progress;
  final double? downloaded;
  final Widget? body;

  static void hideAnyContextMenu() {
    if (_currentlyActive != null) {
      _currentlyActive!.setState(() {
        _currentlyActive!.contextMenuVisible = false;
      });
      _currentlyActive = null;
    }
  }

  const AnimeCard({
    super.key,
    required this.imageTag,
    required this.imageUrl,
    this.title,
    this.imageZoomable = true,
    this.subtitle,
    this.actions = const [],
    this.onTap,
    this.contextMenuBuilder,
    this.progress,
    this.downloaded,
    this.body,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final leftSide = AspectRatio(
      aspectRatio: 5 / 7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.antiAlias,
        child: _LeftSide(
          imageTag: imageTag,
          imageUrl: imageUrl,
          imageZoomable: imageZoomable,
          onTap: onTap,
          contextMenuBuilder: contextMenuBuilder,
          title: title,
          subtitle: subtitle,
          progress: progress,
          downloaded: downloaded,
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 14,
      ),
      child: (body == null && actions.isEmpty)
          ? leftSide
          : Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                leftSide,
                const SizedBox(width: 16),
                Expanded(
                  child: _RightSide(
                    actions: actions,
                    child: body,
                  ),
                ),
              ],
            ),
    );
  }
}

class _LeftSide extends ConsumerStatefulWidget {
  final String imageTag;
  final String? imageUrl;
  final bool imageZoomable;
  final Function()? onTap;
  final Widget Function()? contextMenuBuilder;
  final String? title;
  final String? subtitle;
  final double? progress;
  final double? downloaded;

  const _LeftSide({
    required this.imageTag,
    required this.imageUrl,
    required this.imageZoomable,
    required this.onTap,
    required this.contextMenuBuilder,
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.downloaded,
  });

  @override
  ConsumerState<_LeftSide> createState() => _LeftSideState();
}

class _LeftSideState extends ConsumerState<_LeftSide> {
  bool contextMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(color: Colors.black),
        ),
        Positioned.fill(
          child: widget.imageUrl != null
              ? (widget.imageZoomable
                  ? ZoomableNetworkImage(
                      tag: widget.imageTag,
                      url: widget.imageUrl!,
                      fit: BoxFit.cover,
                    )
                  : Hero(
                      tag: widget.imageTag,
                      child: CachedNetworkImage(
                        imageUrl: widget.imageUrl!,
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    ))
              : Container(
                  color: Colors.grey,
                ),
        ),
        if (widget.title != null)
          Positioned.fill(
            top: null,
            child: Material(
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        if (widget.subtitle != null) ...[
                          const SizedBox(height: 6),
                          Text(
                            widget.subtitle!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  if (widget.progress != null)
                    SizedBox(
                      height: 3,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: LinearProgressIndicator(
                              value: widget.downloaded ?? 1,
                              backgroundColor: Colors.transparent,
                              valueColor: AlwaysStoppedAnimation<Color?>(
                                Theme.of(context)
                                    .colorScheme
                                    .surfaceContainerHighest,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: LinearProgressIndicator(
                              value: widget.progress,
                              backgroundColor: Colors.transparent,
                              // valueColor: AlwaysStoppedAnimation<Color?>(
                              //   Colors.red,
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        if (contextMenuVisible && widget.contextMenuBuilder != null)
          Positioned.fill(
            child: TapRegion(
              behavior: HitTestBehavior.opaque,
              // consumeOutsideTaps: true,
              onTapOutside: (_) => setState(() {
                contextMenuVisible = false;
                _currentlyActive = null;
              }),
              child: Material(
                color: Colors.black87,
                child: ListTileTheme(
                  data: ListTileThemeData(
                    textColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: Center(
                    child: widget.contextMenuBuilder!(),
                  ),
                ),
              ),
            ),
          ),
        if ((widget.onTap != null || widget.contextMenuBuilder != null) &&
            !contextMenuVisible)
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: widget.onTap,
                onLongPress: _onLongPress(),
                onSecondaryTap: _onLongPress(),
              ),
            ),
          ),
      ],
    );
  }

  Function()? _onLongPress() {
    return widget.contextMenuBuilder != null
        ? () => setState(() {
              contextMenuVisible = true;
              if (_currentlyActive != null && _currentlyActive != this) {
                _currentlyActive!.setState(() {
                  _currentlyActive!.contextMenuVisible = false;
                });
              }
              _currentlyActive = this;
            })
        : null;
  }
}

class _RightSide extends ConsumerWidget {
  final Widget? child;
  final List<Widget> actions;

  const _RightSide({
    required this.actions,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: child ?? const SizedBox(),
        ),
        if (actions.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: actions,
            ),
          ),
      ],
    );
  }
}

// String _toTitleCase(String text) {
//   return text
//       .split('_')
//       .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
//       .join(' ');
// }
