import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  dotColor: Colors.greenAccent.shade100,
                  dotIncreasedColor: Colors.greenAccent,
                  // dotBgColor: Colors.greenAccent,
                  // boxFit: BoxFit.cover,
                  images: const [
                    Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/2127733/pexels-photo-2127733.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                    Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/9661303/pexels-photo-9661303.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                    Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/9661272/pexels-photo-9661272.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                    Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/4157199/pexels-photo-4157199.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'))
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade300, shape: BoxShape.circle),
                  child: IconButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    icon: const Icon(
                      Icons.navigate_before_rounded,
                      color: Colors.greenAccent,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        "Lamborghini Huracán EVO",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          multipleTextStyle("\$120/", 25, Colors.greenAccent),
                          multipleTextStyle(
                              "day", 20, Colors.blueGrey.shade300),
                        ],
                      ),
                    )
                  ],
                ),
                gapBetweenWidgets(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amberAccent.shade400,
                      size: 25,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 1,
                        ),
                        children: [
                          multipleTextStyle('4.9', 18, Colors.black),
                          multipleTextStyle(
                              '(2.5k reviews)', 18, Colors.blueGrey.shade300),
                        ],
                      ),
                    ),
                  ],
                ),
                gapBetweenWidgets(),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      wordSpacing: 1.5,
                      fontSize: 15,
                      color: Colors.blueGrey.shade400,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'We have expanded our habrid battery good quality, depend ability reliability ',
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = (() => Navigator.pushNamed(context, '/')),
                        text: 'More Details',
                        style: TextStyle(
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.greenAccent,
                            color: Colors.greenAccent),
                      )
                    ],
                  ),
                ),
                gapBetweenWidgets(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent),
                          child: Icon(
                            Icons.event_seat_rounded,
                            color: Colors.blueGrey,
                            size: 40,
                          ),
                        ),
                        Text(
                          '2 Seats',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent),
                          child: Icon(
                            Icons.directions_car_rounded,
                            color: Colors.blueGrey,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Auto',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent),
                          child: Icon(
                            Icons.speed_rounded,
                            color: Colors.blueGrey,
                            size: 40,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              multipleTextStyle('140', 15, Colors.blueGrey),
                              multipleTextStyle(
                                  'km/h', 15, Colors.blueGrey.shade200)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                gapBetweenWidgets(),
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey),
                ),
                // Link(uri:uri.parse(),retu)
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: () => {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[900],
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: const Text(
            "Book Now",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

SizedBox gapBetweenWidgets() {
  return const SizedBox(
    height: 20,
  );
}

TextSpan multipleTextStyle(String text, double fSize, Color color) {
  return TextSpan(
    text: text,
    style:
        TextStyle(fontWeight: FontWeight.bold, fontSize: fSize, color: color),
  );
}
