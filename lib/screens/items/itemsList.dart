import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  // const ItemsList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List items = [
      {
        "image": "assets/images/mobile1.jpg",
        "name": "Iphone 12",
        "icon": "star",
        "rating": "5.0",
        "review": "23",
        "pieces": "20",
        "price": "90",
        "quantity": "1"
      },
      {
        "image": "assets/images/mobile5.jpg",
        "name": "OnePlus",
        "icon": "star",
        "rating": "5.0",
        "review": "27",
        "pieces": "11",
        "price": "105",
        "quantity": "9"
      },
      {
        "image": "assets/images/mobile2.jpg",
        "name": "Iphone 11",
        "icon": "star",
        "rating": "4.0",
        "review": "17",
        "pieces": "23",
        "price": "85",
        "quantity": "3"
      },
      {
        "image": "assets/images/mobile3.jpg",
        "name": "Iphone 7",
        "icon": "star",
        "rating": "3.0",
        "review": "19",
        "pieces": "5",
        "price": "110",
        "quantity": "7"
      },
      {
        "image": "assets/images/mobile4.jpg",
        "name": "Samsung",
        "icon": "star",
        "rating": "5.0",
        "review": "25",
        "pieces": "7",
        "price": "115",
        "quantity": "2"
      }
    ];

    return Column(
      children: [
        for (var item in items)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            width: size.width * 0.8,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      // "assets/images/mobile1.jpg",
                      item["image"],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // "Iphone 12",
                        item["name"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(item["rating"]),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("(${item['review']} Review)")
                        ],
                      ),
                      Row(
                        children: [
                          Text("${item['pieces']} pieces"),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "\$${item['price']}",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Text("Quantity ${item['quantity']}"),
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
