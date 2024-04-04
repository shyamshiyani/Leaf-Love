import 'package:flutter/material.dart';

import '../utils/allproductsdata.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool onclick = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          child: const Icon(
            Icons.keyboard_backspace,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(19),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  ProductData.favouritedata.add(data);
                  ProductData.convertLikeData();
                });
              },
              child: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      ProductData.favouritedata.add(data);
                      ProductData.convertLikeData();
                      Navigator.of(context).pushNamed('like_page');
                    },
                  );
                },
                child: Icon(
                  (onclick == true)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  size: 25,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
        backgroundColor: Colors.green,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.green,
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            height: 630,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...data['images'].map(
                  (e) => Container(
                    margin:
                        const EdgeInsets.only(bottom: 495, right: 60, left: 60),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: CircleAvatar(
                        radius: 145,
                        backgroundImage: NetworkImage(e),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 330, left: 142),
                    height: 50,
                    width: 120,
                    decoration: ProductData.cartProductData.length == 0
                        ? const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )
                        : const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              (data['qty'] <= 1)
                                  ? ProductData.cartProductData.remove(data)
                                  : Container();
                              data['qty']--;
                            });
                          },
                          child: const Icon(
                            Icons.remove,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          data['qty'] == 0
                              ? "${data['qty']}"
                              : "${data['qty']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              data['qty']++;
                            });
                          },
                          child: const Icon(
                            Icons.add,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${data['title']}",
                      style: const TextStyle(
                          fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 13),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "${data['description']}...",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              const TextSpan(
                                text: "Read More",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "⭐${data['rating']}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "🔥 ${data['cal']}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "⏰${data['cookingTime']}-${data['timing']}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, top: 18, right: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ingradients",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...data['ingidiance'].map((e) {
                            return Container(
                              alignment: Alignment.center,
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 15),
                              child: Text(
                                "$e",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ProductData.cartData.add(data);
                          ProductData.convertUniqueData();
                          (data['qty'] == 0) ? data['qty']++ : Container();
                          ProductData.alltotal(ProductData.isTrue = true);
                          Navigator.of(context).pushNamed('Cart_page');
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 370,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(13),
                          ),
                        ),
                        child: const Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
