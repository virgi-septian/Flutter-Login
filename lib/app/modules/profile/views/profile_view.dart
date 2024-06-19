import 'package:chatapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:get/get.dart';
import 'package:chatapp/app/controllers/authentication_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final authC = Get.find<AuthenticationController>();
  ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () => authC.logout(),
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Column(children: [
                AvatarGlow(
                  endRadius: 110,
                  glowColor: Colors.black,
                  duration: Duration(seconds: 2),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(1000),
                      image: DecorationImage(
                        image: AssetImage('assets/logo/noimage.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Text(
                    "Virgi Septian",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Text(
                    "virgiseptian77@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () => Get.toNamed(Routes.UPDATE_STATUS),
                      leading: Icon(Icons.note_add_outlined),
                      title: Text(
                        'Update Status',
                        style: TextStyle(fontSize: 22),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      onTap: () => Get.toNamed(Routes.CHANGE_PROFILE),
                      leading: Icon(Icons.note_add_outlined),
                      title: Text(
                        'Change Profile',
                        style: TextStyle(fontSize: 22),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.note_add_outlined),
                      title: Text(
                        'Change Theme',
                        style: TextStyle(fontSize: 22),
                      ),
                      trailing: Text('Light'),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: context.mediaQueryPadding.bottom + 10),
              child: Column(
                children: [
                  const Text(
                    'Bergetar',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'v.12e32',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
