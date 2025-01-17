import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        //  _controller.play();

        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            H(30),
            Row(
              children: [
                W(20),
                Image.asset(
                  Images.dp,
                  height: 30.h,
                  width: 30.w,
                  fit: BoxFit.cover,
                ),
                W(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Taseen Ahmad',
                        style: getTextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff00040D)),
                      ),
                      H(2),
                      Text(
                        'Interior Designer • Kerala',
                        style: getTextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff8E8E8E)),
                      )
                    ],
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [],
                  iconColor: const Color(0xff434343),
                ),
                W(10)
              ],
            ),
            Container(
                height: 500.h,
                color: const Color(0xff00040D),
                alignment: Alignment.center,
                child: _controller.value.isInitialized
                    ? Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: VideoProgressIndicator(
                                _controller,
                                allowScrubbing: true,
                                colors: const VideoProgressColors(
                                    playedColor: primaryColor,
                                    backgroundColor: Color(0xffAFAFB6),
                                    bufferedColor: Color(0xffAFAFB6)),
                              )),
                        ],
                      )
                    : const Center(
                        child: CircularProgressIndicator.adaptive())),
            H(10),
            Row(
              children: [
                W(15),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Images.share,
                      height: 24.h,
                      width: 24.w,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Images.save,
                      height: 24.h,
                      width: 24.w,
                    )),
                const Spacer(),
                CommonButton(
                  text: 'More Details',
                  size: Size(
                    93.w,
                    27.h,
                  ),
                  borderRadius: 5,
                  textStyle: getTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffF7FAFF)),
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                ),
                W(20)
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
