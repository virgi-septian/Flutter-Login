import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;
import '../controllers/chat_room_controller.dart';

class ChatRoomView extends GetView<ChatRoomController> {
  const ChatRoomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leadingWidth: 80,
        leading: InkWell(
          onTap: () => Get.back(),
          borderRadius: BorderRadius.circular(100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_back),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.black26,
                child: Image.asset('assets/logo/noimage.png'),
              ),
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Virgi',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Virgi',
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: WillPopScope(
        onWillPop: () {
          if (controller.isShowEmoji.isTrue) {
            controller.isShowEmoji.value = false;
          } else {
            Navigator.pop(context);
          }
          return Future.value(false);
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ItemChat(isSender: true),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: true),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                        ItemChat(isSender: false),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              margin: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: TextField(
                          controller: controller.chatC,
                          focusNode: controller.focusNode,
                          cursorColor: Colors.red[900],
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              onPressed: () {
                                controller.focusNode.unfocus();
                                controller.isShowEmoji.toggle();
                              },
                              icon: Icon(Icons.emoji_emotions_outlined),
                            ),
                            hintText: 'ketik pesan ...',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.red[900],
                    child: IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: Icon(Icons.send),
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => (controller.isShowEmoji.isTrue)
                  ? Container(
                      height: 350,
                      child: EmojiPicker(
                        onEmojiSelected: (category, Emoji emoji) {
                          controller.addEmojiToChat(emoji);
                        },
                        onBackspacePressed: () {
                          controller.deleteEmoji();
                        },
                        config: Config(
                          columns: 7,
                          emojiSizeMax: 32 *
                              (foundation.defaultTargetPlatform ==
                                      TargetPlatform.iOS
                                  ? 1.30
                                  : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
                          verticalSpacing: 0,
                          horizontalSpacing: 0,
                          gridPadding: EdgeInsets.zero,
                          initCategory: Category.RECENT,
                          bgColor: Color(0xFFF2F2F2),
                          indicatorColor: Colors.blue,
                          iconColor: Colors.grey,
                          iconColorSelected: Colors.blue,
                          backspaceColor: Colors.blue,
                          skinToneDialogBgColor: Colors.white,
                          skinToneIndicatorColor: Colors.grey,
                          enableSkinTones: true,
                          recentTabBehavior: RecentTabBehavior.RECENT,
                          recentsLimit: 28,
                          noRecents: const Text(
                            'No Recents',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black26),
                            textAlign: TextAlign.center,
                          ), // Needs to be const Widget
                          loadingIndicator: const SizedBox
                              .shrink(), // Needs to be const Widget
                          tabIndicatorAnimDuration: kTabScrollDuration,
                          categoryIcons: const CategoryIcons(),
                          buttonMode: ButtonMode.MATERIAL,
                        ),
                      ),
                    )
                  : SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemChat extends StatelessWidget {
  const ItemChat({
    required this.isSender,
    super.key,
  });
  final bool isSender;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: isSender
                  ? BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    )
                  : BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
              color: Colors.red[900],
            ),
            child: Text(
              "Hello World",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: isSender
                ? EdgeInsets.only(right: 10)
                : EdgeInsets.only(left: 10),
            child: Text('20.20'),
          ),
        ],
      ),
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    );
  }
}
