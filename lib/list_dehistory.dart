import 'package:flutter/material.dart';
import 'package:flutter_application_2/consts.dart';
import 'package:flutter_application_2/check_circle.dart';

class Item {
  String title;

  Item(this.title);
}

class list_dehistory extends StatefulWidget {
  @override
  _list_dehistoryState createState() => _list_dehistoryState();
}

class _list_dehistoryState extends State<list_dehistory> {
  final padding = 20.0;
  List<Item> itemList = [
    Item("Test"),
    Item("Test"),
    Item("Test"),
    Item("Test"),
    Item("Test")
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: 500,
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return buildListItem(
                  itemList[index],
                  screenSize.width * 0.9,
                  screenSize.height * 0.1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(
    Item item,
    double containerWidth,
    double containerHeight,
  ) {
    return Column(
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 30.0,
                spreadRadius: -20.0,
                offset: Offset(1, 6),
              ),
            ],
          ),
          padding: EdgeInsets.all(padding),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.emoji_emotions,
                  color: icons,
                  size: 40,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}
