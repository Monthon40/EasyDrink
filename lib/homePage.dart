import 'package:flutter/material.dart';
import 'constants.dart';
import 'food1.dart';
import 'food2.dart';
import 'food3.dart';
import 'food4.dart';
import 'food5.dart';
import 'food6.dart';
import 'food7.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'shopList.dart';
import 'model_food.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<Modelfood> storeModelfood = <Modelfood>[];

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text('Easy Drink  ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: kDarkCardColor,
                )),
            Icon(Icons.local_drink_rounded, color: kDarkCardColor),
          ],
        ),
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      floatingActionButton: buildNavigateButton(),
      backgroundColor: kBackgroundColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: TextFormField(
                          controller: textController,
                          onChanged: (_) => EasyDebounce.debounce(
                                'textController',
                                Duration(milliseconds: 500),
                                () => setState(() {}),
                              ),
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Search products...',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: kExtra3Color,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: kExtra3Color,
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: kDarkCardColor,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: kExtra1Color,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                            child: Text('Suggested',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: kDarkCardColor,
                                )),
                          ),
                          Text('See All',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kWhite,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          //----------------------First container--------------------------------//

                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Food1Widget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 190,
                              decoration: BoxDecoration(
                                color: kExtra3Color,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x230E151B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'images/br.jpg',
                                        width: double.infinity,
                                        height: 115,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child: Text('Beer Magaritas',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: kWhite,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 0, 0),
                                      child: Text('Cocktail',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kDarkCardColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //--------------------------- second container --------------------------------------- //

                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Food2Widget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 190,
                              decoration: BoxDecoration(
                                color: kExtra3Color,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x230E151B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'images/wrc.jpg',
                                        width: double.infinity,
                                        height: 115,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child: Text('White Russian Cocktail',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: kWhite,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 0, 0),
                                      child: Text('Cocktail',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kDarkCardColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //----------------------Third container------------------------------//

                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Food3Widget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 190,
                              decoration: BoxDecoration(
                                color: kExtra3Color,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x230E151B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'images/sbm.jpeg',
                                        width: double.infinity,
                                        height: 115,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child: Text('Strawberry Mojito',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: kWhite,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 0, 0),
                                      child: Text('Cocktail',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kDarkCardColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //------------------------------------fourth Container--------------------//

                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Food4Widget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 190,
                              decoration: BoxDecoration(
                                color: kExtra3Color,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x230E151B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'images/msc.jpg',
                                        width: double.infinity,
                                        height: 115,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child: Text('Maxican-Style Coffee',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: kWhite,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 0, 0),
                                      child: Text('Beverage',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kDarkCardColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // ----------------------------------fifth Container-----------------------//

                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Food5Widget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 190,
                              decoration: BoxDecoration(
                                color: kExtra3Color,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x230E151B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'images/whc2.jpeg',
                                        width: double.infinity,
                                        height: 115,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child: Text('White Hot Chocolate',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: kWhite,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 0, 0),
                                      child: Text('Beverage',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kDarkCardColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //---------------------------------sixth Container---------------------------//

                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Food6Widget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 190,
                              decoration: BoxDecoration(
                                color: kExtra3Color,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x230E151B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'images/mmc.jpg',
                                        width: double.infinity,
                                        height: 115,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child: Text('Moscow Mule Cocktail',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: kWhite,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 0, 0),
                                      child: Text('Cocktail',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kDarkCardColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //--------------------------------seventh Container---------------------------//

                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Food7Widget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 190,
                              decoration: BoxDecoration(
                                color: kExtra3Color,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x230E151B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'images/pbbs.jpeg',
                                        width: double.infinity,
                                        height: 115,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child:
                                          Text('Peanut Butter Banana Smoothie',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: kWhite,
                                              )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 0, 0),
                                      child: Text('Smoothie',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kDarkCardColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavigateButton() => FloatingActionButton(
        child: Icon(Icons.shopping_cart),
        backgroundColor: kDarkCardColor,
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShopListWidget(data: storeModelfood),
            ),
          );
        },
      );
}

//all ingredients information are from here "https://www.allrecipes.com/recipes/138/drinks/smoothies/"
