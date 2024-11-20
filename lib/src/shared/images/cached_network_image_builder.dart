import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class CachedNetworkImageBuilder extends StatefulWidget {
  const CachedNetworkImageBuilder({
    required this.image,
    //required this.prefs,
    this.fit = BoxFit.cover,
    this.height,
    super.key,
  });

  final String image;
  final BoxFit fit;
  final double? height;
  //final SharedPreferences prefs;

  @override
  State<CachedNetworkImageBuilder> createState() =>
      _CachedNetworkImageBuilderState();
}

class _CachedNetworkImageBuilderState extends State<CachedNetworkImageBuilder> {
  late String imageUrl;
  late bool showImage;

  @override
  void initState() {
    if (widget.image.isEmpty) {
      imageUrl = '';
      showImage = false;
    } else {
      imageUrl = _cleanUrl(widget.image);
      showImage = true; // !_isBlacklistedUrl(imageUrl);
    }

    super.initState();
  }

  String _cleanUrl(String url) {
    // Remove all characters before the first 'http' in the URL.
    return url.replaceAll(RegExp('^.*?(?=http)'), '');
  }

  //Future<void> _blacklistUrl(String url) async {
  //  await widget.prefs.setBool('BLACKLIST_URL_$url', true);
  //}

  // bool _isBlacklistedUrl(String url) {
  //  return widget.prefs.getBool('BLACKLIST_URL_$url') ?? false;
  //}

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showImage,
      replacement: const Center(child: Icon(Icons.image_not_supported)),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget: (context, url, error) {
          if (error is HttpException) {
            if (kDebugMode) {
              debugPrint('CachedNetworkImage blacklisting URL: $url');
            }
            // _blacklistUrl(url);
          }
          return const Center(child: Icon(Icons.image_not_supported));
        },
        fit: widget.fit,
        placeholder: (context, url) => const Center(child: Icon(Icons.image)),
        width: double.infinity,
        height: widget.height,
      ),
    );
  }
}
