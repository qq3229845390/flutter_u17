

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {

  static AssetImage(name) => 'assets/images/${name}.png';




  var default_icon = CachedNetworkImage(
    imageUrl: '',
    placeholder: (context, url) => Image(
        fit: BoxFit.fill,
        image: AssetImage(
            '${Constants.AssetImage('normal_placeholder_h')}')),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );

}