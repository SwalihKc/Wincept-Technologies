import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wincept_ui/placeModel.dart';
import 'package:wincept_ui/second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Place> dummyDataList = [
    Place(
        name: 'Nusa Pedina',
        location: 'Bali, Indonesia',
        rating: '4.8 (3.2k)',
        distance: '3000 km',
        noOfResturants: '108 avail.',
        discription:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est vel odio elementum non id venenatis, elementum. Enim augue velit tristique eu viverra. Massa.',
        Iimage: Image.asset('assets/Image.png')),
    Place(
      name: 'Unknown',
      location: 'kerala,India',
      rating: '3.6 (3.9k)',
      distance: '1009 km',
      noOfResturants: '123 avail.',
      discription:
          'hello,Lorem ipsum dolor sit amet, consectetur adipiscing elit.,Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      Iimage: Image.asset('assets/Image (1).png'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ImageIcon(AssetImage('assets/Menu.png')),
        actions: [Image.asset('assets/Ellipse 3.png')],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi John,',
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            Text(
              'Where do you\nwanna go?',
              style: GoogleFonts.montserrat(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(1000, 10, 39, 83),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 25,
            ),
            Card(
              child: Stack(children: [
                Image.asset('assets/iceland.png'),
                Positioned(
                  top: MediaQuery.sizeOf(context).height / 5.5,
                  child: Image.asset('assets/iceland_Info.png'),
                ),
              ]),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 30,
            ),
            DefaultTabController(
              length: 4,
              child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.deepOrange,
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  tabs: [
                    Tab(
                      icon: Row(children: [
                        Icon(Icons.fireplace),
                        Text('Popular'),
                      ]),
                    ),
                    Tab(
                      icon: Row(children: [
                        Icon(Icons.water),
                        Text('Lake'),
                      ]),
                    ),
                    Tab(
                      icon: Row(children: [
                        Icon(Icons.beach_access_sharp),
                        Text('Beach'),
                      ]),
                    ),
                    Tab(
                      icon: Row(children: [
                        Icon(Icons.text_rotation_angleup_outlined),
                        Text('Mountain'),
                      ]),
                    ),
                  ]),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Container(
              height: 205,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Second(
                                    dummyDataList: dummyDataList[index],
                                  ))),
                      child: Container(
                        width: 218,
                        height: 205,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            dummyDataList[index].Iimage,
                            ListTile(
                              title: Text(
                                '${dummyDataList[index].name}',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              subtitle: Text(
                                '${dummyDataList[index].location}',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100),
                              ),
                              trailing: Icon(Icons.star_half_rounded),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
