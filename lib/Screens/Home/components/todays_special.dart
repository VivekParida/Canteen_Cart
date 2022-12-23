import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Cart/cart_modal.dart';
import 'package:mr_corporate/Screens/Cart/provider_list.dart';
import 'package:mr_corporate/db_helper.dart';
import 'package:provider/provider.dart';

class TodaysSpecialState extends StatefulWidget {
  const TodaysSpecialState({Key? key}) : super(key: key);

  @override
  State<TodaysSpecialState> createState() => _TodaysSpecialStateState();
}

class _TodaysSpecialStateState extends State<TodaysSpecialState> {
  DBHelper? dbHelper = DBHelper();
  List<String> productName = ['Amadol', 'chicken'];
  List<String> productUnit = ['Non-veg', 'Non-Veg'];
  List<int> productPrice = [129, 130];
  List<String> productImage = ['What', 'Nani'];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, top: 16),
      height: 249,
      //color: Colors.black26,
      child: ListView.builder(
        itemCount: productName.length,
        itemBuilder: ((context, index) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  height: 233,
                  width: 175,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        //Image.asset("name", height: 100, width: 151,)
                        Container(
                          height: 100,
                          width: 151,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(productPrice[index].toString()),
                            Container(
                              color: Color.fromRGBO(255, 233, 233, 1),
                              height: 26,
                              width: 62,
                              child: Text(
                                productUnit[index].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(201, 26, 26, 1)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          productName[index].toString(),
                          softWrap: false,
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 39,
                          width: 151,
                          child: ElevatedButton(
                            onPressed: () {
                              dbHelper!
                                  .insert(Cart(
                                      productId: index.toString(),
                                      productName:
                                          productName[index].toString(),
                                      initialPrice: productPrice[index],
                                      productPrice: productPrice[index],
                                      quantity: 1,
                                      unitTag: productUnit[index].toString(),
                                      image: productImage[index].toString(),
                                      id: index))
                                  .then((value) {
                                print('Product is added to cart');
                                cart.addTotalPrice(double.parse(
                                    productPrice[index].toString()));
                                cart.addCounter();
                              }).onError((error, stackTrace) {
                                print(error.toString());
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(238, 118, 35, 1),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            ),
                            child: Text("Add"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
