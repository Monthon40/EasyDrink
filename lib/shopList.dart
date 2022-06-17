import 'package:drink/constants.dart';
import 'package:drink/model_food.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ShopListWidget extends StatefulWidget {
  List<Modelfood> data;
  ShopListWidget({required this.data});

  @override
  _ShopListWidgetState createState() => _ShopListWidgetState();
}

class _ShopListWidgetState extends State<ShopListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<Modelfood> nameFood = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < this.widget.data.length; i++) {
      nameFood.add(Modelfood(this.widget.data[i].id, this.widget.data[i].name));
    }

    // nameFood = this.widget.data;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text('Shopping List',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: kDarkCardColor,
            )),
        actions: [
          IconButton(
            icon: Icon(Icons.start),
            onPressed: () async {
              Navigator.pop(context);
            },
          )
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                for (var i = 0; i < nameFood.length; i++)
                  (new Card(
                    clipBehavior: Clip.antiAlias,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 10.0, left: 10.0, bottom: 10.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                nameFood[i].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.045,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          // margin: EdgeInsets.only(left: 10, right: 10),
          child: ElevatedButton(
            style: ButtonStyle(
              foregroundColor: getColor(kWhite, kButtonColor),
              backgroundColor: getColor(kRed, kWhite),
            ),
            child: Text('remove all'),
            onPressed: () {
              setState(() {
                this.widget.data.clear();
                nameFood.clear();
              });
            },
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }
}
