import 'package:flutter/material.dart';
import 'package:inventory_management_app/Pages/Details.dart';
import 'package:inventory_management_app/Widget/widget_support.dart';

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  bool Ice_cream = false, Cl_shop = false, Lady_Clothes = false, Optic = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Added SingleChildScrollView
        child: Container(
          margin: EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Zakariye..', style: AppWidgect.boldTextFieldStyle()),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text('Quality products', style: AppWidgect.HeadlineTextFieldStyle()),
              Text('Discover and Get the best products', style: AppWidgect.LightTextFieldStyle()),
              SizedBox(height: 20),
              Container(margin: EdgeInsets.only(right: 20), child: showitem()),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Details(),)
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("Images/iceC.jpg", height: 140, width: 140, fit: BoxFit.cover),
                                Text('Ice Cream', style: AppWidgect.boldTextFieldStyle()),
                                SizedBox(height: 5),
                                Text('Fresh and healthy', style: AppWidgect.LightTextFieldStyle()),
                                SizedBox(height: 5),
                                Text("\$25", style: AppWidgect.SemiboldtTextFieldStyle()),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("Images/iceC.jpg", height: 140, width: 140, fit: BoxFit.cover),
                              Text('Chocolate', style: AppWidgect.boldTextFieldStyle()),
                              SizedBox(height: 5),
                              Text('Enjoy The Taste', style: AppWidgect.LightTextFieldStyle()),
                              SizedBox(height: 5),
                              Text("\$28", style: AppWidgect.SemiboldtTextFieldStyle()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("Images/iceC.jpg", height: 120, width: 120, fit: BoxFit.cover),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('coconut ice cream and heavy cold', style: AppWidgect.SemiboldtTextFieldStyle()),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('let\'s enjoy it', style: AppWidgect.LightTextFieldStyle()),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('\$24', style: AppWidgect.SemiboldtTextFieldStyle()),
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                
                
              ),
            ],
          ),
          
       
        ),
           
        
      ),
    );
  }

  Widget showitem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              Ice_cream = true;
              Cl_shop = false;
              Lady_Clothes = false;
              Optic = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: Ice_cream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(6),
              child: Image.asset("Images/Ice_cream.jpg", height: 40, width: 40, fit: BoxFit.cover),
            ),
          ),
          
        ),
        
        GestureDetector(
          onTap: () {
            setState(() {
              Ice_cream = false;
              Cl_shop = true;
              Lady_Clothes = false;
              Optic = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: Cl_shop ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(6),
              child: Image.asset("Images/Cl_shop.jpg", height: 40, width: 40, fit: BoxFit.cover),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Ice_cream = false;
              Cl_shop = false;
              Lady_Clothes = true;
              Optic = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: Lady_Clothes ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(6),
              child: Image.asset("Images/Lady_Clothes.jpg", height: 40, width: 40, fit: BoxFit.cover),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Ice_cream = false;
              Cl_shop = false;
              Lady_Clothes = false;
              Optic = true;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: Optic ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(6),
              child: Image.asset("Images/Optic.jpg", height: 40, width: 40, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}