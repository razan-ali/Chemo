import 'package:flutter/material.dart';
import 'package:flutter_application_2/consts.dart';
import 'package:flutter_application_2/check_circle.dart';

class Item {
  String title;
  String subtitle;
  bool isChecked;

  Item(this.title, this.subtitle, {this.isChecked = false});
}

class ItemListView extends StatefulWidget {
  @override
  _ItemListViewState createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView> {
  final padding = 20.0;
  List<Item> itemList = [
    Item("Omega 3", "1 pill after meal"),
    Item("Vitamin D", "1 sashet before meal"),
    Item("Test", "1 sashet before meal"),
    Item("Test", "1 sashet before meal"),
    Item("Test", "1 sashet before meal")
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
                  screenSize.height * 0.15,
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
                  Icons.medication_liquid_sharp,
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
                    Text(
                      item.subtitle,
                      style: TextStyle(
                        color: border,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: CheckCircle(),
              )
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
