import 'package:flutter/material.dart';
import 'package:shopper_buddy/constants/global_variables.dart';
import 'package:shopper_buddy/features/account/widgets/below_app_bar.dart';
import 'package:shopper_buddy/features/account/widgets/orders.dart';
import 'package:shopper_buddy/features/account/widgets/top_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            flexibleSpace: Container(
              decoration:
                  const BoxDecoration(gradient: GlobalVariables.appBarGradient),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/amazon_in.png',
                    width: 120,
                    height: 45,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(Icons.notifications_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(Icons.search),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: const Column(
          children: [
            BelowAppBar(),
            SizedBox(height: 10),
            TopButtons(),
            SizedBox(height: 20),
            Orders(),
          ],
        ),
      ),
    );
  }
}
