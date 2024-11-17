import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/widgets/image.dart';

class AnimeCard extends ConsumerWidget {
  final String imageTag;
  final String? imageUrl;
  final bool imageZoomable;
  final String? title;
  final String? subtitle;
  final List<Widget> actions;
  final Function()? onTap;
  final double? progress;
  final double? downloaded;
  final Widget? body;

  const AnimeCard({
    super.key,
    required this.imageTag,
    required this.imageUrl,
    this.title,
    this.imageZoomable = true,
    this.subtitle,
    this.actions = const [],
    this.onTap,
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
        child: _LeftSide(
          imageTag: imageTag,
          imageUrl: imageUrl,
          imageZoomable: imageZoomable,
          onTap: onTap,
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

class _LeftSide extends ConsumerWidget {
  final String imageTag;
  final String? imageUrl;
  final bool imageZoomable;
  final Function()? onTap;
  final String? title;
  final String? subtitle;
  final double? progress;
  final double? downloaded;

  const _LeftSide({
    required this.imageTag,
    required this.imageUrl,
    required this.imageZoomable,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.downloaded,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Positioned.fill(
          child: imageUrl != null
              ? (imageZoomable
                  ? ZoomableNetworkImage(
                      tag: imageTag,
                      url: imageUrl!,
                      fit: BoxFit.cover,
                    )
                  : Hero(
                      tag: imageTag,
                      child: CachedNetworkImage(
                        imageUrl: imageUrl!,
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
        if (title != null)
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
                          title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        if (subtitle != null) ...[
                          const SizedBox(height: 6),
                          Text(
                            subtitle!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  if (progress != null)
                    SizedBox(
                      height: 3,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: LinearProgressIndicator(
                              value: downloaded ?? 1,
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
                              value: progress,
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
        if (onTap != null)
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
      ],
    );
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
