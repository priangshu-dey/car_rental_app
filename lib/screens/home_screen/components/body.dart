import 'package:car_rental_app/screens/home_screen/components/details.dart';
import 'package:car_rental_app/screens/login_screen/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //firebase
  final _auth = FirebaseAuth.instance;
  FirebaseFirestore operationFirestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.green,
        // backgroundColor: Color(),
        // title: Text("This is homeScreen"),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.location_on_rounded,
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Car Rental',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {},
              trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Log Out"),
              trailing: Icon(Icons.logout),
              onTap: () async {
                await _auth.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Easily find your",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          wordSpacing: 5),
                    ),
                    Text(
                      "Rent Car",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 10),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (ctx, i) => Center(
                    child: Text(
                      "BMW",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    // childAspectRatio: 0,
                    // childAspectRatio: 3 / 2,
                    // crossAxisSpacing: 10,
                    mainAxisSpacing: 25,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 50,
              // ),
              SizedBox(
                height: 530,
                child: StreamBuilder<QuerySnapshot>(
                  stream: operationFirestore.collection('BMW').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      final data = snapshot.data!.docs;
                      return Expanded(
                        child: ListView.builder(
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Container(
                                        // color: Colors.redAccent,
                                        height: 400,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          // border: Border.all(width: 2, color: Colors.blueGrey),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(15),
                                                  child: SizedBox(
                                                    height: 200,
                                                    width: 350,
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  CarDetailScreen(),
                                                            ));
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        child: Image.network(
                                                          data[index]
                                                              .get("image"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 12,
                                                  right: 12,
                                                  child: IconButton(
                                                    onPressed: () => {},
                                                    icon: const Icon(
                                                        Icons.favorite_rounded),
                                                    color: Colors.redAccent,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    foregroundImage: NetworkImage(
                                                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15),
                                                    child: Text(
                                                      "Tom Marvolo Riddle",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              child: Text(
                                                data[index]
                                                    .get("name")
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors
                                                        .amberAccent.shade700,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    data[index].get("rating"),
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    data[index].get("review"),
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blueGrey.shade400),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "\$" +
                                                        data[index]
                                                            .get("perday"),
                                                    style: TextStyle(
                                                        fontSize: 23.5,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'day',
                                                      style: TextStyle(
                                                          color: Colors.blueGrey
                                                              .shade400),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              );
                            }),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 20, 40),
        child: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          // shape:,
          onPressed: () => {},
          child: const Icon(
            Icons.tune_rounded,
            size: 45,
            // color: Colors.blueGrey,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
