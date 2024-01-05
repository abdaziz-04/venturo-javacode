import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/constants/svg_constants.dart';
import 'package:diet_nyaman_app/features/chat/controllers/chat_controller.dart';
import 'package:diet_nyaman_app/features/chat/view/components/card_chat_components.dart';
import 'package:flutter/material.dart';
import 'package:diet_nyaman_app/features/chat/constants/chat_assets_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final assetsConstant = ChatAssetsConstant();
  final svgConstant = SvgConstants();
  final ctr = ChatController.to;
  var dataDummy = [
    {"title": "Mas Didit", "deskripsi": "Selamat Pagi, Saya dengan mas didit apa ada yg bisa dibantu dengan apa gejala.....", "count": "5"},
    {"title": "CS", "deskripsi": "Selamat Pagi, Saya dengan CS apa ada yg bisa dibantu dengan apa gejala.....", "count": "1"},
    {"title": "Grup", "deskripsi": "", "count": ""},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Builder(
            builder: (context) => const SizedBox(),
          ),
          foregroundColor: AppColors.blackText800,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: const Text("Chat"),
        ),
        body: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Get.toNamed(Routes.detailChatRoute),
                    child: CardChatComponents(
                      count: dataDummy[index]["count"] ?? "",
                      deskripsi: dataDummy[index]["deskripsi"] ?? "",
                      title: dataDummy[index]["title"] ?? "",
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.h,
                  ),
                  itemCount: dataDummy.length,
                ),
              ),
            ),
            // Expanded(
            //   child: Obx(
            //     () => ctr.message.isEmpty
            //         ? const SizedBox()
            //         : GroupedListView<Message, DateTime>(
            //             padding: const EdgeInsets.all(8),
            //             elements: ctr.message,
            //             reverse: false,
            //             order: GroupedListOrder.ASC,
            //             groupBy: (element) => (DateTime(
            //               DateTime.parse(element.createdAt ?? "").year,
            //               DateTime.parse(element.createdAt ?? "").month,
            //               DateTime.parse(element.createdAt ?? "").day,
            //             )),
            //             groupHeaderBuilder: (element) => Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 120.w),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(8),
            //                 child: Center(
            //                   child: Text(
            //                     DateFormat.yMEd().format(DateTime.parse(element.createdAt ?? "")) == DateFormat.yMEd().format(DateTime.now())
            //                         ? "Today"
            //                         : DateFormat.yMEd().format(DateTime.parse(element.createdAt ?? "")),
            //                     style: const TextStyle(
            //                       color: Color(0xffB3B3B3),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             itemBuilder: (context, element) => Align(
            //               alignment: element.isMe! ? Alignment.centerRight : Alignment.centerLeft,
            //               child: Container(
            //                 margin: EdgeInsets.only(bottom: 10.h),
            //                 decoration: BoxDecoration(
            //                   color: element.isMe! ? AppColors.pink : const Color(0xffD9D9D9),
            //                   borderRadius: BorderRadius.circular(10.r),
            //                 ),
            //                 child: Padding(
            //                   padding: const EdgeInsets.all(12),
            //                   child: Text(
            //                     element.message ?? "",
            //                     style: TextStyle(
            //                       color: element.isMe! ? AppColors.white : Colors.black,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //   ),
            // ),
            // Container(
            //   color: AppColors.white,
            //   padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: TextField(
            //           controller: ctr.ctrChatField,
            //           decoration: InputDecoration(
            //             enabledBorder: OutlineInputBorder(
            //               borderSide: const BorderSide(
            //                 width: 1,
            //                 color: Color(0xffB3B3B3),
            //               ),
            //               borderRadius: BorderRadius.circular(10.r),
            //             ),
            //             border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(10.r),
            //             ),
            //             contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            //             hintText: "Ketik Pesan...",
            //             suffixIcon: IconButton(
            //               icon: SvgPicture.asset(
            //                 svgConstant.clipButton,
            //                 width: 30.w,
            //                 height: 30.h,
            //                 color: Colors.grey,
            //               ),
            //               onPressed: () {},
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20.w,
            //       ),
            //       Container(
            //         decoration: const BoxDecoration(
            //           color: AppColors.pink,
            //           shape: BoxShape.circle,
            //         ),
            //         child: IconButton(
            //           icon: SvgPicture.asset(
            //             svgConstant.sendButton,
            //             width: 20.w,
            //             height: 20.h,
            //             color: Colors.white,
            //           ),
            //           onPressed: () {
            //             ctr.message.add(
            //               Message(isMe: true, message: ctr.ctrChatField.text, createdAt: DateTime.now().toString()),
            //             );
            //             ctr.ctrChatField.text = "";
            //           },
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
