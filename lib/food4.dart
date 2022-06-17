import 'package:drink/check_box.dart';
import 'package:drink/constants.dart';
import 'package:flutter/material.dart';
import 'shopList.dart';
import 'package:drink/model_food.dart';

class Food4Widget extends StatefulWidget {
  const Food4Widget({Key? key}) : super(key: key);

  @override
  _Food4WidgetState createState() => _Food4WidgetState();
}

class _Food4WidgetState extends State<Food4Widget> {
  late List<String> checkboxGroupValues;
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final text = 'Item added to the shopping list';
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  List<Modelfood> storeModelfood = <Modelfood>[];

  // final notifications = [
  //   CheckBoxState(title: '4 fluid ounces hot brewed coffee'),
  //   CheckBoxState(title: '1 fluid ounce coffee liqueur'),
  //   CheckBoxState(title: '1 fluid ounce tequila'),
  //   CheckBoxState(title: '1 tablespoon whipped topping'),
  //   CheckBoxState(title: '1 pinch ground cinnamon, for garnish'),
  //   CheckBoxState(title: '1 pinch cocoa powder, for garnish'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text('Maxican-Style Coffee',
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
                                      'images/msc.jpg',
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
                    '4 fluid ounces hot brewed coffee',
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
                          Modelfood(0, '4 fluid ounces hot brewed coffee'));
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
                    '1 fluid ounce coffee liqueur',
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
                          .add(Modelfood(1, '1 fluid ounce coffee liqueur'));
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
                    '1 fluid ounce tequila',
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
                      storeModelfood.add(Modelfood(2, '1 fluid ounce tequila'));
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
                    '1 tablespoon whipped topping',
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
                          .add(Modelfood(3, '1 tablespoon whipped topping'));
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
                    '1 pinch ground cinnamon, for garnish',
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
                          Modelfood(4, '1 pinch ground cinnamon, for garnish'));
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
                  value: isChecked6,
                  onChanged: (value) {
                    setState(() => isChecked6 = value!);
                  },
                  activeColor: kExtra4Color,
                  checkColor: kBackgroundColor,
                ),
                Expanded(
                  child: Text(
                    '1 pinch cocoa powder, for garnish',
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
                          Modelfood(5, '1 pinch cocoa powder, for garnish'));
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
                'Per Serving: 191 calories; protein 0.5g; carbohydrates 13.5g; fat 1.3g; cholesterol 0mg; sodium 6.7mg.',
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
