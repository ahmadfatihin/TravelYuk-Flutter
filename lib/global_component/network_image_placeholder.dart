import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';

class NetworkImagePlaceholder extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxShape shape;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? imageFit;
  final ImageProvider<Object>? assetsPlaceholder;
  final bool noPlaceholder;
  final Color? colorize;
  const NetworkImagePlaceholder(
      {Key? key,
      this.height,
      this.width,
      this.imageUrl,
      this.borderRadius,
      this.shape = BoxShape.rectangle,
      this.imageFit = BoxFit.cover,
      this.assetsPlaceholder,
      this.noPlaceholder = false,
      this.colorize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return CachedNetworkImage(
        imageUrl: imageUrl!,
        useOldImageOnUrlChange: true,
        placeholder: (context, url) => _buildPlaceholder(context),
        imageBuilder: (context, imageProvider) => Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                shape: shape,
                borderRadius: borderRadius,
                image: DecorationImage(
                    fit: imageFit,
                    image: imageProvider,
                    colorFilter: colorize == null
                        ? null
                        : ColorFilter.mode(colorize!, BlendMode.srcIn)))),
        errorWidget: (context, url, error) => _buildPlaceholder(context),
      );
    } else {
      return _buildPlaceholder(context);
    }
  }

  BorderRadiusGeometry? placeHolderBorderRadius() {
    if (shape == BoxShape.circle || borderRadius != null) {
      return borderRadius;
    } else {
      return BorderRadius.circular(8);
    }
  }

  Widget _buildPlaceholder(BuildContext context) {
    if (noPlaceholder) {
      return SizedBox(
        height: height,
        width: width,
      );
    }
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          shape: shape,
          borderRadius: placeHolderBorderRadius(),
          image: DecorationImage(
              fit: imageFit,
              image: assetsPlaceholder ??
                  const AssetImage("assets/destination1.png")
              //TODO:// flutter_gen doesn't work because we need to migrate into nullsafety
              //Assets.images.logo.stargoBlack,
              )),
    );
  }

  static ImageProvider transparent() {
    final Uint8List kTransparentImage = Uint8List.fromList(<int>[
      0x89,
      0x50,
      0x4E,
      0x47,
      0x0D,
      0x0A,
      0x1A,
      0x0A,
      0x00,
      0x00,
      0x00,
      0x0D,
      0x49,
      0x48,
      0x44,
      0x52,
      0x00,
      0x00,
      0x00,
      0x01,
      0x00,
      0x00,
      0x00,
      0x01,
      0x08,
      0x06,
      0x00,
      0x00,
      0x00,
      0x1F,
      0x15,
      0xC4,
      0x89,
      0x00,
      0x00,
      0x00,
      0x0A,
      0x49,
      0x44,
      0x41,
      0x54,
      0x78,
      0x9C,
      0x63,
      0x00,
      0x01,
      0x00,
      0x00,
      0x05,
      0x00,
      0x01,
      0x0D,
      0x0A,
      0x2D,
      0xB4,
      0x00,
      0x00,
      0x00,
      0x00,
      0x49,
      0x45,
      0x4E,
      0x44,
      0xAE,
    ]);
    return MemoryImage(kTransparentImage);
  }
}
