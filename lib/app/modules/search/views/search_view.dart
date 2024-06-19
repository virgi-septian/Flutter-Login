import 'package:chatapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchFriendController> {
  final List<Widget> searchFriend = List.generate(
    20,
    (index) => ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black26,
        child: Image.asset(
          'assets/logo/noimage.png',
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "Nama Pengguna ke ${index + 1}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        "Orang${index + 1}@gmail.com",
        style: TextStyle(fontSize: 20),
      ),
      trailing: GestureDetector(
        onTap: () => Get.toNamed(Routes.CHAT_ROOM),
        child: Chip(
          label: Text("message"),
        ),
      ),
    ),
  );
  SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: const Text('Search'),
          centerTitle: true,
          backgroundColor: Colors.red[900],
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                controller: controller.searC,
                cursorColor: Colors.red[900],
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.black26, width: 1),
                  ),
                  hintText: "Search your friend here",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  suffixIcon: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    focusColor: Colors.black26,
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.red[900],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(130),
      ),
      body: searchFriend == 0
          ? Center(
              child: Container(
                width: Get.width * 0.7,
                height: Get.height * 0.7,
                child: Lottie.asset('assets/lottie/empty.json'),
              ),
            )
          : ListView.builder(
              itemCount: searchFriend.length,
              itemBuilder: (context, index) => searchFriend[index],
            ),
    );
  }
}
