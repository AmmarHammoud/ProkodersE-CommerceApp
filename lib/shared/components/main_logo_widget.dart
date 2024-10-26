import 'package:flutter/material.dart';

import '../constants/local_images.dart';

class MainLogoWidget extends StatelessWidget {
  const MainLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        LocalImages.mainLogo,
        height: 150,
        //width: 94,
      ),
    );
  }
}
