import 'package:better_player/better_player.dart';
import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/constants/svg_constants.dart';
import 'package:diet_nyaman_app/features/home/constants/home_assets_constant.dart';
import 'package:diet_nyaman_app/features/olahraga/view/components/card_olahraga_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OlahragaDetailScreen extends StatefulWidget {
  const OlahragaDetailScreen({super.key});

  @override
  State<OlahragaDetailScreen> createState() => _OlahragaDetailScreenState();
}

class _OlahragaDetailScreenState extends State<OlahragaDetailScreen> {
  late BetterPlayerController _betterPlayerController;
  final assetsHomeConstant = HomeAssetsConstant();
  var dummyData = [
    {"title": "1. Warm-up", "image": HomeAssetsConstant().homeBanner, "isDone": "true"},
    {"title": "2. Next Workout", "image": HomeAssetsConstant().workout1, "isDone": "false"},
    {"title": "3. Next Workout", "image": HomeAssetsConstant().workout2, "isDone": "false"}
  ];

  @override
  void initState() {
    BetterPlayerControlsConfiguration controlsConfiguration = const BetterPlayerControlsConfiguration(
      controlBarColor: Colors.black26,
      iconsColor: Colors.white,
      playIcon: Icons.play_arrow_outlined,
      progressBarPlayedColor: Colors.indigo,
      progressBarHandleColor: Colors.indigo,
      skipBackIcon: Icons.replay_10_outlined,
      skipForwardIcon: Icons.forward_10_outlined,
      backwardSkipTimeInMilliseconds: 10000,
      forwardSkipTimeInMilliseconds: 10000,
      enableSkips: true,
      enableFullscreen: true,
      enablePip: true,
      enablePlayPause: true,
      enableMute: true,
      enableAudioTracks: true,
      enableProgressText: true,
      enableSubtitles: false,
      showControlsOnInitialize: true,
      enablePlaybackSpeed: true,
      controlBarHeight: 40,
      loadingColor: Colors.red,
      overflowModalColor: Colors.black54,
      overflowModalTextColor: Colors.white,
      overflowMenuIconsColor: Colors.white,
    );

    BetterPlayerConfiguration betterPlayerConfiguration = BetterPlayerConfiguration(
        controlsConfiguration: controlsConfiguration,
        aspectRatio: 16 / 9,
        fit: BoxFit.contain,
        subtitlesConfiguration: const BetterPlayerSubtitlesConfiguration(
          fontSize: 16.0,
        ));
    BetterPlayerDataSource dataSource =
        BetterPlayerDataSource(BetterPlayerDataSourceType.network, "https://dev.dlabs.id:8082/example.m3u8", useAsmsSubtitles: true);
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(dataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    child: Text(
                      "Pemula",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackText800,
                        fontFamily: AppFonts.hankenGrotesk,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: BetterPlayer(controller: _betterPlayerController),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "1. Warm-up",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackText800,
                  fontFamily: AppFonts.hankenGrotesk,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => CardOlahragaComponents(
                    thumbnail: dummyData[index]["image"] ?? "",
                    title: dummyData[index]["title"] ?? "",
                    isDone: bool.parse(dummyData[index]["isDone"] ?? "false")),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
                itemCount: dummyData.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
