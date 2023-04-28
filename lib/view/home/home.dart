// ignore_for_file: use_build_context_synchronously

import 'package:api_assignment/controller/homeprovider.dart';
import 'package:api_assignment/util/utils.dart';
import 'package:api_assignment/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../user_detail/user_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        displacement: 250,
        backgroundColor: Colors.blue,
        color: Colors.white,
        strokeWidth: 3,
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        onRefresh: () async {
          await Future.delayed(const Duration(milliseconds: 1500));
          Provider.of<HomeProvider>(context, listen: false).getUserData();
        },
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: HexColor("FF283593"),
              centerTitle: true,
              title: const TextTitle(
                  title: "Home", ls: 0, fontwght: FontWeight.bold, fontsz: 26),
            ),
            body: Consumer<HomeProvider>(
              builder: (context, value, child) {
                return SafeArea(
                    child: value.user.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            itemCount: value.user.length + 1,
                            itemBuilder: (context, index) {
                              if (index < value.user.length) {
                                return SizedBox(
                                  height: 100,
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/img$index.jpeg"),
                                      radius: 30,
                                    ),
                                    title: TextTitle(
                                      title: value.user[index].name,
                                      fontsz: 16,
                                      color: Colors.black,
                                      fontwght: FontWeight.bold,
                                      ls: 0,
                                    ),
                                    subtitle: TextTitle(
                                        title: value.user[index].address.city,
                                        ls: 0,
                                        fontwght: FontWeight.bold,
                                        fontsz: 14),
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => UserDetailPage(
                                            img: "assets/images/img$index.jpeg",
                                            userDetail: value.user[index]),
                                      ));
                                    },
                                  ),
                                );
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                          ));
              },
            )));
  }
}
