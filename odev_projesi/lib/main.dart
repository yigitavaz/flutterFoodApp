import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Color.fromARGB(213, 255, 252, 252),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.pink.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(
                0,
                3,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.deepPurple,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18),
          child: GNav(
              backgroundColor: Colors.deepPurple,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.deepPurple.shade400,
              color: Colors.white,
              gap: 13,
              onTabChange: (index) {
                //indexi alıyor, Çeşitler index:0, Sepetim:1, Favorilerim:2, Arama:3
                print(index);
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Çeşitler',
                ),
                GButton(
                  icon: Icons.shopping_basket,
                  text: 'Sepetim',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Favorilerim',
                ),
                GButton(icon: Icons.search, text: 'Arama'),
              ]),
        ),
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        )),
        backgroundColor: Colors.deepPurple[800],
        elevation: 5,
        shadowColor: Colors.pink.withOpacity(0.7),
        title: Text(
          'HALİÇ YEMEKHANE',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            //Menü aç
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.account_balance_wallet)),
          Text(
            '\n135₺',
            style: TextStyle(fontSize: 15),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/profil2.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.10),
                ),
              ]),
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/burger.jpg'),
                  height: 200,
                  width: 600,
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\n\nB U R G E R L E R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: <Shadow>[Shadow(offset: Offset(3.0, 2.0))],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.10),
                ),
              ]),
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/pizza.jpg'),
                  height: 200,
                  width: 600,
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\n\nP İ Z Z A L A R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: <Shadow>[Shadow(offset: Offset(3.0, 2.0))],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.10),
                ),
              ]),
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/Anayemek.jpeg'),
                  height: 200,
                  width: 600,
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\n\nA N A \n Y E M E K L E R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: <Shadow>[Shadow(offset: Offset(3.0, 2.0))],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.10),
                ),
              ]),
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/sicakicecek.jpg'),
                  height: 200,
                  width: 600,
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\n\nS I C A K \nİ Ç E C E K L E R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: <Shadow>[Shadow(offset: Offset(3.0, 2.0))],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.10),
                ),
              ]),
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/mercimek.jpg'),
                  height: 200,
                  width: 600,
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\n\nÇ O R B A L A R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: <Shadow>[Shadow(offset: Offset(3.0, 2.0))],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.10),
                ),
              ]),
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/sogukicecek.jpg'),
                  height: 200,
                  width: 600,
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\n\nS O Ğ U K\nİ Ç E C E K L E R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: <Shadow>[Shadow(offset: Offset(3.0, 2.0))],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.10),
                ),
              ]),
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/tatli2.jpg'),
                  height: 200,
                  width: 600,
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\n\nT A T L I L A R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: <Shadow>[Shadow(offset: Offset(3.0, 2.0))],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scaffold,
    );
  }
}
