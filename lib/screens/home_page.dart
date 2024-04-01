import 'package:flutter/material.dart';

import '../utils/allProductsData.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool onclick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, bottom: 18, right: 18),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 42),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        const Text(
                          "Habiganj City",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        const SizedBox(width: 192),
                        Row(
                          children: [
                            Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade200,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('Cart_page');
                                },
                                child: const Icon(
                                  Icons.sort,
                                  size: 39,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "Find The",
                          style: TextStyle(
                              fontSize: 31,
                              // fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: " Best\n",
                          style: TextStyle(
                              fontSize: 31,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: "Food",
                          style: TextStyle(
                              fontSize: 31,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: " Around You",
                          style: TextStyle(
                              fontSize: 31,
                              // fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ]))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.search_rounded,
                                    color: Colors.black45,
                                    size: 23,
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    "Search your favourite food",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Icon(
                                    Icons.filter_alt_outlined,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          const TextSpan(
                              text: "Find",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: "   5km>",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.redAccent.shade100)),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 41.5,
                        width: 106,
                        decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            )),
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            "Salads",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 23.5),
                      Container(
                        height: 41.5,
                        width: 106,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            )),
                        alignment: Alignment.center,
                        child: const Text(
                          "Hot Sale",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 23.5),
                      Container(
                        height: 41.5,
                        width: 106,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            )),
                        alignment: Alignment.center,
                        child: const Text(
                          "Popularity",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        ...ProductData.allProductData.map(
                          (e) => Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...e['CatagoryProducts'].map(
                                (Map<String, dynamic> e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      'DetailPage',
                                      arguments: e,
                                    );
                                  },
                                  child: Container(
                                    height: 310,
                                    width: 179,
                                    margin: const EdgeInsets.only(
                                      bottom: 20,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        )),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 40,
                                              width: 40,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(
                                                    () {
                                                      ProductData.favouritedata
                                                          .add(e);
                                                      ProductData
                                                          .convertLikeData();
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              'like_page');
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  (onclick != true)
                                                      ? Icons
                                                          .favorite_border_outlined
                                                      : Icons.favorite,
                                                  size: 25,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CircleAvatar(
                                          radius: 60,
                                          foregroundImage: NetworkImage(
                                            ("${e['thumbnail']}"),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "${e['title']}",
                                                  style: const TextStyle(
                                                      fontSize: 18.5,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                const SizedBox(width: 35),
                                                Text(
                                                  "${e['timing']}",
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                                const SizedBox(width: 25),
                                                const Icon(
                                                  Icons.star_border_rounded,
                                                  size: 23,
                                                  color: Colors.amber,
                                                ),
                                                Text(
                                                  "${e['rating']}",
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 40),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 26),
                                                  child: Text(
                                                    ("\$${e['price']}"),
                                                    style: const TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 45,
                                                  width: 50,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    ),
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        ProductData.cartData
                                                            .add(e);
                                                        ProductData
                                                            .convertUniqueData();
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 25,
                                                      color: Colors.white
                                                          .withOpacity(0.9),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
