import 'package:drink/check_box.dart';
import 'package:drink/constants.dart';
import 'package:flutter/material.dart';
import 'shopList.dart';
import 'package:drink/model_food.dart';

class Food7Widget extends StatefulWidget {
  const Food7Widget({Key? key}) : super(key: key);

  @override
  _Food7WidgetState createState() => _Food7WidgetState();
}

class _Food7WidgetState extends State<Food7Widget> {
  late List<String> checkboxGroupValues;
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final text = 'Item added to the shopping list';
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  List<Modelfood> storeModelfood = <Modelfood>[];

  // final notifications = [
  //   CheckBoxState(title: '2 bananas, broken into chunks'),
  //   CheckBoxState(title: '2 cups milk'),
  //   CheckBoxState(title: '½ cup peanut butter'),
  //   CheckBoxState(title: '2 tablespoons honey, or to taste'),
  //   CheckBoxState(title: '2 cups ice cubes'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text('Peanut Butter Banana Smoothie',
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
                                      'images/pbbs.jpeg',
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

            // ...notifications.map(buildSingleCheckbox).toList(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() => isChecked = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '2 bananas, broken into chunks',
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
                          .add(Modelfood(0, '2 bananas, broken into chunks'));
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
                  value: isChecked2,
                  onChanged: (value) {
                    setState(() => isChecked2 = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '2 cups milk',
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
                      storeModelfood.add(Modelfood(1, '2 cups milk'));
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
                    '½ cup peanut butter',
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
                      storeModelfood.add(Modelfood(2, '½ cup peanut butter'));
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
                    '2 tablespoons honey, or to taste',
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
                      storeModelfood.add(
                          Modelfood(3, '2 tablespoons honey, or to taste'));
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
                  value: isChecked5,
                  onChanged: (value) {
                    setState(() => isChecked5 = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '2 cups ice cubes',
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
                      storeModelfood.add(Modelfood(4, '2 cups ice cubes'));
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
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: kWhite,
                )),
            Divider(
              color: kBackgroundColor,
              height: 15,
              thickness: 0,
            ),

            Text(
                'Per Serving: 335 calories; protein 12.8g; carbohydrates 34.1g; fat 18.8g; cholesterol 9.8mg; sodium 202.8mg.',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ShopListWidget(data: storeModelfood),
                    ),
                  );
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

  // Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
  //       controlAffinity: ListTileControlAffinity.leading,
  //       value: checkbox.value,
  //       title: Text(checkbox.title,
  //           style: TextStyle(
  //             fontSize: 15,
  //             fontWeight: FontWeight.w600,
  //             color: kWhite,
  //           )),
  //       checkColor: kBackgroundColor,
  //       activeColor: kExtra4Color,
  //       onChanged: (value) => setState(() => checkbox.value = value!),
  //     );
}
