import 'package:drink/check_box.dart';
import 'package:drink/constants.dart';
import 'package:drink/model_food.dart';
import 'package:drink/shopList.dart';
import 'package:flutter/material.dart';

class Food2Widget extends StatefulWidget {
  const Food2Widget({Key? key}) : super(key: key);

  @override
  _Food2WidgetState createState() => _Food2WidgetState();
}

class _Food2WidgetState extends State<Food2Widget> {
  late List<String> checkboxGroupValues;
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  final text = 'Item added to the shopping list';
  List<Modelfood> storeModelfood = <Modelfood>[];

  // final notifications = [
  //   CheckBoxState(title: '1 cup ice'),
  //   CheckBoxState(title: '2 fluid ounces vodka'),
  //   CheckBoxState(title: '1 fluid ounce coffee-flavored liqueur'),
  //   CheckBoxState(title: '1 fluid ounce heavy cream'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text('White Russian Cocktail',
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
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.94,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: InkWell(
                              onTap: () async {},
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.96,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: kBackgroundColor,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'images/wrc.jpg',
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6,
                                      color: kExtra4Color,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Text('Ingredients',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: kWhite,
                )),

            Divider(
              color: kBackgroundColor,
              height: 15,
              thickness: 0,
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  // controlAffinity: ListTileControlAffinity.leading,
                  // title: Text('CheckBox'),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() => isChecked = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '1 cup ice',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: kWhite,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: IconButton(
                    icon: Icon(Icons.add_box, color: kAdd),
                    iconSize: 20,
                    onPressed: () {
                      final snackBar = SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          text,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        backgroundColor: kAdd,
                      );
                      storeModelfood.add(Modelfood(0, '1 cup ice'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      // print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),

            // ...notifications.map(buildSingleCheckbox).toList(),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: isChecked2,
                  onChanged: (value) {
                    setState(() => isChecked2 = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '2 fluid ounces vodka',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: kWhite,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: IconButton(
                    icon: Icon(Icons.add_box, color: kAdd),
                    iconSize: 20,
                    onPressed: () {
                      final snackBar = SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          text,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        backgroundColor: kAdd,
                      );
                      storeModelfood.add(Modelfood(1, '2 fluid ounces vodka'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                ),
              ],
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: isChecked3,
                  onChanged: (value) {
                    setState(() => isChecked3 = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '1 fluid ounce coffee-flavored liqueur',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: kWhite,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: IconButton(
                    icon: Icon(Icons.add_box, color: kAdd),
                    iconSize: 20,
                    onPressed: () {
                      final snackBar = SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          text,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        backgroundColor: kAdd,
                      );
                      storeModelfood.add(Modelfood(
                          2, '1 fluid ounce coffee-flavored liqueur'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                ),
              ],
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: isChecked4,
                  onChanged: (value) {
                    setState(() => isChecked4 = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '1 fluid ounce heavy cream',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: kWhite,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: IconButton(
                    icon: Icon(Icons.add_box, color: kAdd),
                    iconSize: 20,
                    onPressed: () {
                      final snackBar = SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          text,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        backgroundColor: kAdd,
                      );
                      storeModelfood
                          .add(Modelfood(3, '1 fluid ounce heavy cream'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                ),
              ],
            ),

            Divider(
              color: kButtonColor,
              height: 20,
              thickness: 3,
            ),
            Text('Nutrition Facts',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: kWhite,
                )),
            Divider(
              color: kBackgroundColor,
              height: 15,
              thickness: 0,
            ),

            Text(
                'Per Serving: 338 calories; protein 0.6g; carbohydrates 12g; fat 11.1g; cholesterol 40.8mg; sodium 22.1mg. Full Nutrition',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: kWhite,
                )),

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: getColor(kWhite, kButtonColor),
                  backgroundColor: getColor(kButtonColor, kWhite),
                ),
                child: Text('Shopping List'),
                onPressed: () async {
                  // Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ShopListWidget(data: storeModelfood)));

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ShopListWidget(data: storeModelfood),
                  //   ),
                  // );
                  // for (int i = 0; i < storeModelfood.length; i++) {
                  //   print(storeModelfood[i].name);
                  // }
                },
              ),
            ),
          ],
        ),
      ),
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

  // Widget buildSingleCheckbox(CheckBoxState checkbox) => Checkbox(
  //       value: checkbox.value,
  //       checkColor: kBackgroundColor,
  //       activeColor: kExtra4Color,
  //       onChanged: (value) => setState(() => checkbox.value = value!),
  //     );
}
