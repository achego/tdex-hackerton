import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return true
        ? Image.network(imageUrl)
        : CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) {
              return const SizedBox.shrink();
            },
            progressIndicatorBuilder: (context, url, progress) {
              return const CupertinoActivityIndicator();
            },
          );
  }
}
