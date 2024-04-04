import 'package:flutter/material.dart';

import '../utils/allproductsdata.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => FavouriteState();
}

class FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourite",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 27,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).popAndPushNamed('Homepage');
                });
              },
              child: const Icon(
                Icons.close,
                size: 27,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: (ProductData.favouriteproductdata.isEmpty)
          ? Container(
              alignment: Alignment.center,
              child: const Text(
                "No data found",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            )
          : Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Expanded(
                    child: Container(
                  height: 750,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...ProductData.favouriteproductdata.map(
                            (e) => Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                height: 100,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: CircleAvatar(
                                        foregroundImage: NetworkImage(
                                          "${e['thumbnail']}",
                                        ),
                                        radius: 42,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 22, left: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${e['title']}",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black87
                                                        .withOpacity(0.8),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: Text(
                                                    "\$${e['price']}",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black87
                                                          .withOpacity(0.8),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  height: 24,
                                                  width: 24,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        ProductData
                                                            .favouritedata
                                                            .remove(e);
                                                        ProductData
                                                            .favouriteproductdata
                                                            .remove(e);
                                                      });
                                                    },
                                                    child: const Icon(
                                                      Icons.favorite,
                                                      size: 20,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
    );
  }
}
