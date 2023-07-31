import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ZoomableNetworkImage extends StatelessWidget {
  final Object tag;
  final String url;
  final BoxFit? fit;

  const ZoomableNetworkImage({
    required this.tag,
    required this.url,
    this.fit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Scaffold(
                backgroundColor: Colors.black,
                body: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Navigator.of(context).pop(),
                  child: Center(
                    child: InteractiveViewer(
                      clipBehavior: Clip.none,
                      child: Hero(
                        tag: tag,
                        child: CachedNetworkImage(
                          imageUrl: url,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: CachedNetworkImage(
          imageUrl: url,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: fit,
        ),
      ),
    );
  }
}
