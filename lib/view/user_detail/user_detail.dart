import 'package:flutter/material.dart';
import '../../model/user_model.dart';
import '../widgets/widgets.dart';
import 'detail_section.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage(
      {super.key, required this.userDetail, required this.img});
  final User userDetail;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        //2
        SliverAppBar(
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: TextTitle(
                title: " ${userDetail.id}.  ${userDetail.name}",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 17),
            background: Image.asset(
              img,
              fit: BoxFit.fill,
            ),
          ),
        ),
        //3
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return DetailSection(
                userName: userDetail.username,
                email: userDetail.email,
                phone: userDetail.phone,
                website: userDetail.website,
                address: userDetail.address,
              );
            },
            childCount: 1,
          ),
        ),
      ],
    ));
  }
}
