import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class AppImageWidget extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;

  const AppImageWidget({
    Key? key,
    required this.imageUrl,
    this.height = 70,
    this.width = 70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Material(
        child: ImageNetwork(
          image: imageUrl,
          imageCache: CachedNetworkImageProvider(imageUrl),
          height: height,
          width: width,
          duration: 800,
          curve: Curves.easeIn,
          onPointer: true,
          debugPrint: false,
          fullScreen: false,
          fitAndroidIos: BoxFit.cover,
          fitWeb: BoxFitWeb.cover,
          onLoading: const CircularProgressIndicator(),
          onError: const Icon(
            Icons.error,
            color: Colors.red,
          ),
        ),
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      placeholder: (context, url) => const CircularProgressIndicator(),
      fit: BoxFit.cover,
    );
  }
}
