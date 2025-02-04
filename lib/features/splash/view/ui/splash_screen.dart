import 'package:flutter/material.dart';
import 'package:venturo_core/features/splash/constants/splash_assets_constant.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final assetsConstant = SplashAssetsConstant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image(
                image: AssetImage(assetsConstant.logo),
                width: 200,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
