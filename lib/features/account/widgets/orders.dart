import 'package:flutter/material.dart';
import 'package:shopper_buddy/constants/global_variables.dart';
import 'package:shopper_buddy/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://unsplash.com/photos/a-green-car-parked-on-the-side-of-the-road-ymXfdg_37nA',
    'https://unsplash.com/photos/a-green-car-parked-on-the-side-of-the-road-ymXfdg_37nA',
    'https://unsplash.com/photos/a-green-car-parked-on-the-side-of-the-road-ymXfdg_37nA',
    'https://unsplash.com/photos/a-green-car-parked-on-the-side-of-the-road-ymXfdg_37nA',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your orders',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(
                    fontSize: 18,
                    color: GlobalVariables.selectedNavBarColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            //display all orders
          ],
        ),
        Container(
          height: 200,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(imgUrl: list[index]);
            },
          ),
        ),
      ],
    );
  }
}
