import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_app/game/controller/Home_Controller.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "GAME",
            style: GoogleFonts.dancingScript(
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ],
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   child: Image.asset(
            //     "assets/gif/200w.webp",
            //     fit: BoxFit.fill,
            //   ),
            // ),
            SingleChildScrollView(
              child: Obx(
                () => Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 770,
                          width: 130,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8),
                                child: Draggable(
                                  data: homecontroller.qalist[index].key,
                                  child: homecontroller.qalist[index].ondrop ==
                                          false
                                      ? Container(
                                          height: 70,
                                          width: 70,
                                          child: Text(
                                            "${homecontroller.qalist[index].image}",
                                            style: TextStyle(
                                              fontSize: 50,
                                            ),
                                          ),
                                        )
                                      : SizedBox(),
                                  feedback: homecontroller
                                              .qalist[index].ondrop ==
                                          false
                                      ? Container(
                                          height: 100,
                                          width: 100,
                                          child: Text(
                                            "${homecontroller.qalist[index].image}",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        )
                                      : SizedBox(),
                                  onDragCompleted: () {
                                    Container();
                                    homecontroller.qalist[index].ondrop = true;
                                  },
                                ),
                              );
                            },
                            itemCount: homecontroller.qalist.length,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          height: 770,
                          width: 130,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DragTarget(
                                  builder:
                                      (context, candidateData, rejectedData) {
                                    return Container(
                                      height: 70,
                                      width: 70,
                                      child: Text(
                                        "${homecontroller.anlist[index].image}",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 50,
                                        ),
                                      ),
                                    );
                                  },
                                  onWillAccept: (data) {
                                    return data ==
                                        homecontroller.anlist[index].key;
                                  },
                                  onAccept: (data) {
                                    homecontroller.anlist.removeAt(
                                        homecontroller.qalist[index].index!);
                                  },
                                ),
                              );
                            },
                            itemCount: homecontroller.anlist.length,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
