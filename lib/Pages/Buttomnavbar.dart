import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:inventory_management_app/Pages/Home.dart';
import 'package:inventory_management_app/Pages/Order.dart';
import 'package:inventory_management_app/Pages/Profile.dart';
import 'package:inventory_management_app/Pages/Wallet.dart';


class BottomNav extends StatefulWidget {
const BottomNav({super.key});

@override
State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
int CurrentTabIndex = 0;
late List<Widget> Pages;
late Widget currentpage;
late HOME homepage;
late Profile profile;
late Order order;
late Wallet wallet;
@override
void initState() {
super.initState();
homepage = HOME();
profile = Profile();
order = Order();
wallet = Wallet();
Pages = [homepage, order, wallet, profile];
currentpage = homepage;
}

Widget build(BuildContext context) {
return Scaffold(
bottomNavigationBar: CurvedNavigationBar(
height: 65,
backgroundColor: Colors.white,
color: Colors.black,
animationDuration: Duration(milliseconds: 500),
onTap: (int index) {
setState(() {
CurrentTabIndex = index;


        });
      },
      items: [
  Icon(
    Icons.home_outlined,
    color: Colors.white,
  ),
  Icon(Icons.shopping_bag_outlined, color: Colors.white),
  Icon(Icons.wallet_outlined, color: Colors.white),
  Icon(Icons.person_outline, color: Colors.white),
]),
body: Pages[CurrentTabIndex]
);
}}