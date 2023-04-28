import 'package:flutter/material.dart';
import '../../model/user_model.dart';
import '../../util/utils.dart';
import '../widgets/widgets.dart';

class DetailSection extends StatelessWidget {
  const DetailSection(
      {super.key,
      required this.userName,
      required this.email,
      required this.phone,
      required this.website,
      required this.address});
  final String userName;
  final String email;
  final String phone;
  final String website;
  final Address address;

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 10,
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 15,
        height: 480,
        decoration: BoxDecoration(
            color: HexColor("FF2962FF"),
            borderRadius: BorderRadius.circular(22)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextTitle(
                color: Colors.white,
                title: "Username : $userName",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              ),
              sizedBox,
              TextTitle(
                color: Colors.white,
                title: "Email : $email",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              ),
              sizedBox,
              TextTitle(
                color: Colors.white,
                title: "Phone : $phone",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              ),
              sizedBox,
              TextTitle(
                color: Colors.white,
                title: "Website : $website",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              ),
              sizedBox,
              TextTitle(
                color: Colors.white,
                title: "City : ${address.city}",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              ),
              sizedBox,
              TextTitle(
                color: Colors.white,
                title: "Street : ${address.street}",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              ),
              sizedBox,
              TextTitle(
                color: Colors.white,
                title: "Suite : ${address.suite}",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              ),
              sizedBox,
              TextTitle(
                color: Colors.white,
                title: "Zipcode : ${address.zipcode}",
                ls: 0,
                fontwght: FontWeight.bold,
                fontsz: 22,
              )
            ],
          ),
        ),
      ),
    );
  }
}
