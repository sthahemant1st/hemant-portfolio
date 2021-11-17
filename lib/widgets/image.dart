import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hemant_portfolio/res/colors.dart';

class CustomNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  final Widget? placeholder;

  const CustomNetworkImage(this.imageUrl,
      {Key? key, this.height, this.width, this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (imageUrl != null)
        ? CachedNetworkImage(
            imageUrl: imageUrl!,
            height: height,
            width: width,
            fit: BoxFit.cover,
            errorWidget: (context, string, dynamic) => (placeholder != null)
                ? placeholder!
                : Container(
                    width: height,
                    height: width,
                    decoration:
                        const BoxDecoration(color: AppColors.primaryColor),
                    child: const Icon(Icons.error),
                  ),
            placeholder: (context, string) => Container(
              width: height,
              height: width,
              decoration: const BoxDecoration(color: AppColors.primaryColor),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    // color: AppColors.onPrimaryColor,
                  ),
                ),
              ),
            ),
          )
        : Container(
            width: height,
            height: width,
            decoration: const BoxDecoration(color: AppColors.primaryColor),
          );
  }
}
