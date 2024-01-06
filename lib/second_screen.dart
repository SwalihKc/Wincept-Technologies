import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wincept_ui/placeModel.dart';

class Second extends StatefulWidget {
  final Place dummyDataList;
  const Second({super.key, required this.dummyDataList});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      body: Column(
        children: [
          Expanded(child: Card(child: Image.asset('assets/Image (3).png'))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 189,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        '${widget.dummyDataList.name}',
                        style: GoogleFonts.montserrat(
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(1000, 10, 39, 83),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Card(
                    shape: CircleBorder(),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            change = !change;
                          });
                        },
                        icon: change
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(Icons.favorite_border_sharp))),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.location_on_outlined,
                color: Colors.deepOrange,
                size: 15,
              ),
              SizedBox(
                width: 200,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text('${widget.dummyDataList.location}',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromARGB(
                            1000,
                            57,
                            65,
                            75,
                          ),
                        ));
                  },
                  itemCount: 1,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Card(
                shape: CircleBorder(),
                child: Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.red,
                ),
              ),
              Column(
                children: [
                  Text('Rating',
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      )),
                  SizedBox(
                    width: 60,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text('${widget.dummyDataList.rating}',
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ));
                      },
                      shrinkWrap: true,
                      itemCount: 1,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 15,
                  ),
                  Card(
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.social_distance,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                  Column(
                    children: [
                      Text('Distance',
                          style: GoogleFonts.montserrat(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          )),
                      SizedBox(
                        width: 60,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Text('${widget.dummyDataList.distance}',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ));
                          },
                          shrinkWrap: true,
                          itemCount: 1,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 15,
                      ),
                      Card(
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.restaurant,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Column(
                        children: [
                          Text('Resturant',
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(
                            width: 60,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Text(
                                    '${widget.dummyDataList.noOfResturants}',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ));
                              },
                              shrinkWrap: true,
                              itemCount: 1,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                    '${widget.dummyDataList.discription}',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ));
              },
              shrinkWrap: true,
              itemCount: 1,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width / 1.3,
                  MediaQuery.of(context).size.height / 14),
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Text(
              'Book A Trip',
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
