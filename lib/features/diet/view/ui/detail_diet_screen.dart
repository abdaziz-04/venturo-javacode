import 'package:better_player/better_player.dart';
import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailDietScreen extends StatefulWidget {
  const DetailDietScreen({super.key});

  @override
  State<DetailDietScreen> createState() => _DetailDietScreenState();
}

class _DetailDietScreenState extends State<DetailDietScreen> {
  late BetterPlayerController _betterPlayerController;
  var argument;

  @override
  void initState() {
    argument = Get.arguments;
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
                      argument["title"],
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
                height: 40.h,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: BetterPlayer(controller: _betterPlayerController),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      argument["title"],
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackText800,
                        fontFamily: AppFonts.hankenGrotesk,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.pink,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Save PDF",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                            fontFamily: AppFonts.hankenGrotesk,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Icon(
                          Icons.save,
                          color: AppColors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Fermentum nunc amet pellentesque urna at accumsan. Erat odio odio aliquam augue consectetur facilisis. Laoreet vestibulum in amet luctus ultricies tristique nulla morbi. Maecenas suspendisse venenatis parturient nisi cras sodales mi. Pellentesque varius ut vivamus facilisis ultrices egestas nisl. Fermentum pharetra a libero in blandit vel. Nunc quis sed pellentesque ut viverra sed. Feugiat sollicitudin viverra tincidunt risus nec at lacus. Vel curabitur libero dignissim accumsan nulla vitae tellus iaculis fermentum. Neque praesent non ipsum accumsan. Ultrices arcu sit pellentesque leo leo vulputate. Id at nibh in sit quam turpis at malesuada. Magna non facilisi sed nisl sem hac in est. Eget non in sed elementum suspendisse. Ut ultrices id bibendum eget etiam purus sit. At aenean cursus maecenas nisl elementum rhoncus. Neque feugiat aliquet auctor non mauris aliquam eleifend. Malesuada at sed ut pharetra quis bibendum etiam. Tellus adipiscing consequat consectetur tellus ac vitae integer eu. Elementum in a sed mattis interdum pulvinar",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackText800,
                  fontFamily: AppFonts.hankenGrotesk,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
