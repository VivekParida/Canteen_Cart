import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mr_corporate/Screens/Cart/cart_modal.dart';
import 'package:mr_corporate/Screens/Cart/provider_list.dart';
import 'package:mr_corporate/db_helper.dart';
import 'package:provider/provider.dart';

class CartPageState extends StatefulWidget {
  const CartPageState({Key? key}) : super(key: key);

  @override
  State<CartPageState> createState() => _CartPageStateState();
}

class _CartPageStateState extends State<CartPageState> {
  DBHelper? dbHelper = DBHelper();
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(left: 24, top: 48, bottom: 24, right: 24),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 24,
                ),
                Text(
                  "Book My Meals",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              color: Color.fromRGBO(238, 118, 35, 1),
              //alignment: Alignment.center,
              height: 48,
              child: Consumer<CartProvider>(
                builder: ((context, value, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableWidget(
                          title: 'Sub Total',
                          value:
                              r'$' + value.getTotalPrice().toStringAsFixed(2))
                    ],
                  );
                }),
              ),
            ),
            FutureBuilder(
                future: cart.getData(),
                builder: (context, AsyncSnapshot<List<Cart>> snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                        child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: ((context, index) {
                              return Card(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      height: 131,
                                      // width: 382,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          children: [
                                            //Image.asset("name", height: 100, width: 151,)
                                            Container(
                                              height: 100,
                                              width: 151,
                                              color: Colors.amber,
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Column(
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment
                                              //         .spaceBetween,
                                              children: [
                                                Text(snapshot
                                                    .data![index].productName
                                                    .toString()),
                                                Container(
                                                  color: Color.fromRGBO(
                                                      255, 233, 233, 1),
                                                  height: 26,
                                                  width: 62,
                                                  child: Text(
                                                    snapshot
                                                        .data![index].unitTag
                                                        .toString(),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            201, 26, 26, 1)),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  snapshot
                                                      .data![index].productPrice
                                                      .toString(),
                                                  softWrap: false,
                                                  overflow: TextOverflow.clip,
                                                  maxLines: 2,
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      dbHelper!.delete(snapshot
                                                          .data![index].id!);
                                                      cart.removeCounter();
                                                      cart.removeTotalPrice(
                                                          double.parse(snapshot
                                                              .data![index]
                                                              .productPrice
                                                              .toString()));
                                                    },
                                                    child: Icon(Icons.delete))
                                              ],
                                            ),
                                            Container(
                                              width: 92,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      int quantity = snapshot
                                                          .data![index]
                                                          .quantity!;
                                                      int price = snapshot
                                                          .data![index]
                                                          .initialPrice!;
                                                      quantity--;
                                                      int? newPrice =
                                                          price * quantity;

                                                      if (quantity >= 1) {
                                                        dbHelper!
                                                            .updateQuantity(Cart(
                                                                productId: snapshot
                                                                    .data![
                                                                        index]
                                                                    .id!
                                                                    .toString(),
                                                                productName: snapshot
                                                                    .data![
                                                                        index]
                                                                    .productName!,
                                                                initialPrice: snapshot
                                                                    .data![
                                                                        index]
                                                                    .initialPrice!,
                                                                productPrice:
                                                                    newPrice,
                                                                quantity:
                                                                    quantity,
                                                                unitTag: snapshot
                                                                    .data![
                                                                        index]
                                                                    .unitTag
                                                                    .toString(),
                                                                image: snapshot
                                                                    .data![
                                                                        index]
                                                                    .image
                                                                    .toString(),
                                                                id: snapshot
                                                                    .data![
                                                                        index]
                                                                    .id!))
                                                            .then((value) {
                                                          newPrice = 0;
                                                          quantity = 0;
                                                          cart.removeTotalPrice(
                                                              double.parse(snapshot
                                                                  .data![index]
                                                                  .initialPrice!
                                                                  .toString()));
                                                        }).onError((error,
                                                                stackTrace) {
                                                          print(
                                                              error.toString());
                                                        });
                                                      }
                                                    },
                                                    child: Container(
                                                        color: Color.fromRGBO(
                                                            238, 118, 35, 1),
                                                        child: Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                        )),
                                                  ),
                                                  Text(
                                                    snapshot
                                                        .data![index].quantity
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      int quantity = snapshot
                                                          .data![index]
                                                          .quantity!;
                                                      int price = snapshot
                                                          .data![index]
                                                          .initialPrice!;
                                                      quantity++;
                                                      int? newPrice =
                                                          price * quantity;

                                                      dbHelper!
                                                          .updateQuantity(Cart(
                                                              productId: snapshot
                                                                  .data![index]
                                                                  .id!
                                                                  .toString(),
                                                              productName: snapshot
                                                                  .data![index]
                                                                  .productName!,
                                                              initialPrice: snapshot
                                                                  .data![index]
                                                                  .initialPrice!,
                                                              productPrice:
                                                                  newPrice,
                                                              quantity:
                                                                  quantity,
                                                              unitTag: snapshot
                                                                  .data![index]
                                                                  .unitTag
                                                                  .toString(),
                                                              image: snapshot
                                                                  .data![index]
                                                                  .image
                                                                  .toString(),
                                                              id: snapshot
                                                                  .data![index]
                                                                  .id!))
                                                          .then((value) {
                                                        newPrice = 0;
                                                        quantity = 0;
                                                        cart.addTotalPrice(
                                                            double.parse(snapshot
                                                                .data![index]
                                                                .initialPrice!
                                                                .toString()));
                                                      }).onError((error,
                                                              stackTrace) {
                                                        print(error.toString());
                                                      });
                                                    },
                                                    child: Container(
                                                        color: Color.fromRGBO(
                                                            238, 118, 35, 1),
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            })));
                  }
                  return Text("data");
                }),
          ],
        ),
      )),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  final String title, value;

  const ReusableWidget({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
