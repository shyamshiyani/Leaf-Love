import 'package:flutter/material.dart';

class ProductData {
  static Set<Map<String, dynamic>> favouritedata = {};
  static List<Map<String, dynamic>> favouriteproductdata = [];
  static Set<Map<String, dynamic>> cartData = {};
  static List<Map<String, dynamic>> cartProductData = [];
  static void convertUniqueData() {
    cartProductData = cartData.toList();
  }

  static void convertLikeData() {
    favouriteproductdata = favouritedata.toList();
  }

  static num totalPrice() {
    num sum = 0;
    for (var element in cartProductData) {
      sum += element['price'];
    }
    // total= sum + delivery;

    return sum;
  }

  static num alltotal() {
    num total = 0;
    num delivery = 10;
    total = delivery + totalPrice();
    return total;
  }

  static num delivery() {
    num delivery = 10;

    return delivery;
  }

  static List<Map<String, dynamic>> allProductData = <Map<String, dynamic>>[
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Avocada Salad",
          'price': 218,
          'rating': 4,
          'cal': "100",
          'timing': "20min",
          'cookingTime': "10",
          'description':
              "Avocado salad is a nutritious and refreshing dish made with avocado, mixed greens.",
          'thumbnail':
              "https://www.wellplated.com/wp-content/uploads/2019/08/Avocado-and-Tomato-Salad-with-Lime.jpg",
          'images': [
            "https://www.indianveggiedelight.com/wp-content/uploads/2022/02/avocado-cucumber-salad-1.jpg",
            "https://onolicioushawaii.com/wp-content/uploads/2021/11/japanese-avocado-salad-1.jpg",
            "https://www.vegrecipesofindia.com/wp-content/uploads/2019/12/avocado-salad.jpg",
          ],
          'ingidiance': [
            "🌶️",
            "🥑",
            "🧄",
            "🍏",
            "🥬",
            "🥦",
          ],
          'qty': 1,
        },
        {
          'id': 2,
          'title': "fruit Salad",
          'price': 250,
          'rating': 4.5,
          'cal': 80,
          'timing': "25min",
          'cookingTime': "15",
          'description': "Classic Caesar salad with grilled chicken",
          'thumbnail':
              "https://fitfoodiefinds.com/wp-content/uploads/2020/05/salad-1.jpg",
          'images': [
            "https://www.coinedcuisine.com/wp-content/uploads/2023/06/Coined-Cuisine_Rainbow-Fruit-Salad-P-768x1024.jpg",
            "https://www.chelseasmessyapron.com/wp-content/uploads/2014/04/FRUIT-SALAD-3.jpg",
            "https://bemyrecipe.com/wp-content/uploads/2023/05/bmr45_15.jpg",
          ],
          'ingidiance': [
            "🍉",
            "🍊",
            "🍇",
            "🍍",
            "🍎",
            "🍐",
            "🍑",
            "🍌",
          ],
          'qty': 1,
        },
      ],
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Greek Salad",
          'price': 200,
          'rating': 4.2,
          'cal': 110,
          'timing': "15min",
          'cookingTime': "10",
          'description': "Fresh vegetables with olives and feta cheese",
          'thumbnail':
              "https://www.italianbellavita.com/wp-content/uploads/2022/08/739C7136-CBA2-4DDC-8D56-ECA409F69AB9-3.jpeg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2019/07/greek-salad-2-786x1024.jpg",
            "https://cleananddelicious.com/wp-content/uploads/2022/05/Greek-Salad-5.jpg",
            "https://www.themediterraneandish.com/wp-content/uploads/2023/08/traditional-greek-salad-recipe-9.jpg"
          ],
          'ingidiance': [
            "🧀",
            "🥒",
            "🍋",
            "🫑",
            "🧂",
            "🧄",
          ],
          'qty': 1,
        },
        {
          'id': 2,
          'title': "Cobb Salad",
          'price': 280,
          'rating': 4.7,
          'cal': 100,
          'timing': "30min",
          'cookingTime': "20",
          'description': "Mixed greens with avocado, bacon, and eggs",
          'thumbnail':
              "https://www.cookingclassy.com/wp-content/uploads/2021/03/cobb-salad-18.jpg",
          'images': [
            "https://www.superhealthykids.com/wp-content/uploads/2018/07/cobb-salad-featured-image-square-1.jpg.webp",
            "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/3/4/2/FNM_040113-Classic-Cobb-Salad-Recipe_s4x3.jpg.rend.hgtvcom.826.620.suffix/1371614158612.jpeg",
            "https://tastefulventure.com/wp-content/uploads/2022/05/Mexican-Grilled-Chicken-Cobb-Salad-2.jpg",
          ],
          'ingidiance': [
            "🐔",
            "🥚",
            "🥑",
            "🧅",
            "🧄",
            "🥦",
          ],
          'qty': 1,
        },
      ]
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Caprese Salad",
          'price': 220,
          'rating': 4.3,
          'cal': 50,
          'timing': "15min",
          'cookingTime': "10",
          'description': "Tomatoes, mozzarella, basil, and balsamic glaze",
          'thumbnail':
              "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Caprese-Salad-main-1.jpg",
          'images': [
            "https://www.modernhoney.com/wp-content/uploads/2021/07/Caprese-Salad-1-scaled.jpg",
            "https://assets.epicurious.com/photos/628ba560cf19fbfe9137ffa4/1:1/w_1920,c_limit/Caprese_RECIPE_051922_34205.jpg",
            "https://kathleenashmore.com/wp-content/uploads/2022/05/Frame1.jpg"
          ],
          'ingidiance': [
            "🥦",
            "🧄",
            "🍏",
            "🥬",
            "🥑",
            "🌶️",
          ],
          'qty': 1,
        },
        {
          'id': 2,
          'title': "Spinach Salad",
          'price': 210,
          'rating': 4.1,
          'cal': 130,
          'timing': "20min",
          'cookingTime': "10",
          'description': "Baby spinach with strawberries and almonds",
          'thumbnail':
              "https://www.familyfoodonthetable.com/wp-content/uploads/2023/02/Simple-spinach-salad-1200-3.jpg",
          'images': [
            "https://www.gimmesomeoven.com/wp-content/uploads/2016/09/Apple-Spinach-Recipe-4.jpg",
            "https://www.allrecipes.com/thmb/8kN4_gAkeZrYxUWYQj-2P0iSLKU=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/14469-jamies-cranberry-spinach-salad-DDMFS-4x3-0bba054b8846478c9fa4831afb91410f.jpg",
            "https://marleyspoon.com/media/recipes/63389/main_photos/large/steak_spinach_salad-623b9d7733e9bfc4422aadb6d4d56c65.jpeg"
          ],
          'ingidiance': [
            "🥬",
            "🥦",
            "🌶️",
            "🧄",
            "🍋",
          ],
          'qty': 1,
        },
      ]
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Protines Salad",
          'price': 270,
          'rating': 4.6,
          'cal': 110,
          'timing': "25min",
          'cookingTime': "15",
          'description':
              "Grilled chicken with mixed greens and sesame dressing",
          'thumbnail':
              "https://www.veganfriendly.org.uk/wp-content/uploads/2022/09/high-protein-vegan-salad.jpg",
          'images': [
            "https://i0.wp.com/www.peanutbutterandpeppers.com/wp-content/uploads/2015/01/Green-Protein-Salad-006a.jpg?w=700&ssl=1",
            "https://plantbasedrdblog.com/wp-content/uploads/2022/01/protein-packed-avocado-chickpea-salad_feat.jpg",
            "https://hips.hearstapps.com/hmg-prod/images/281/veggie-cobb-salad-1522250864.jpg"
          ],
          'ingidiance': [
            "🌶️",
            "🌾",
            "🍋",
            "🥬",
            "🥦",
            "🥑",
          ],
          'qty': 1,
        },
        {
          'id': 2,
          'title': "Crunch Salad",
          'price': 290,
          'rating': 4.8,
          'cal': 100,
          'timing': "30min",
          'cookingTime': "20",
          'description': "French salad with tuna, potatoes, and green beans",
          'thumbnail':
              "https://choosingchia.com/jessh-jessh/uploads/2021/06/Thai-Crunch-Salad-2-680x1020.jpg",
          'images': ["", "", ""],
          'ingidiance': [
            "🌶️",
            "🥑",
            "🧄",
            "🍏",
            "🥬",
            "🥦",
          ],
          'qty': 1,
        },
      ]
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Waldorf Salad",
          'price': 240,
          'rating': 4.4,
          'cal': " 60",
          'timing': "20min",
          'cookingTime': "10",
          'description': "Apples, grapes, celery, and walnuts with mayonnaise",
          'thumbnail':
              "https://www.throughthefibrofog.com/wp-content/uploads/2021/06/waldorf-salad-without-mayo-1.jpg",
          'images': ["", "", ""],
          'ingidiance': [
            "🥑",
            "🧅",
            "🧄",
            "🥦",
            "🐔",
            "🥚",
          ],
          'qty': 1,
        },
        {
          'id': 2,
          'title': "Whole Grains Salad",
          'price': 260,
          'rating': 4.5,
          'cal': 100,
          'timing': "25min",
          'cookingTime': "15",
          'description': "Olives, cucumbers, tomatoes, and feta cheese",
          'thumbnail':
              "https://eqhct8esjgc.exactdn.com/wp-content/uploads/2020/11/pomegranate-whole-grain-salad-with-dressing-l.jpg?strip=all&lossy=1&resize=600%2C800&ssl=1",
          'images': ["", "", ""],
          'ingidiance': [
            "🌶",
            "🥑",
            "🧄",
            "🍏",
            "🥬",
            "🥦",
          ],
          'qty': 1,
        },
      ]
    }
  ];
}

class GlobalData {
  static button({required String text}) {
    return Container(
      height: 45,
      width: 115,
      decoration: BoxDecoration(
        // color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17.5,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static button2({required dynamic icon}) {
    return Container(
      height: 25,
      width: 25,
      decoration: const BoxDecoration(
        color: Colors.black87,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: Colors.white,
        size: 14,
      ),
    );
  }
}
