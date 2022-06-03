import 'package:flutter/material.dart';
import 'package:videocallv1/Screens/Terms_Conditions_Screen/Components/terms_of_service_text.dart';
import 'package:videocallv1/constants/colors.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Terms of Service",
            style: TextStyle(color: kPrimaryTextColor)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: kPrimaryTextColor,
            size: 24.0,
          ),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () {
            // ignore: avoid_print
            print("Back to Welcome Screen");
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: TermsOfServiceText.termsData().length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TermsOfServiceText.termsData()[index].title.toString(),
                      style: const TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      TermsOfServiceText.termsData()[index].data.toString(),
                      style: const TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
