import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.blue,
          ),
          bottomNavigationBarTheme:
              BottomNavigationBarThemeData(selectedItemColor: Colors.blue)),
      title: 'Design',
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            size: 40, //change size on your need
            color: Colors.white, //change color on your need
          ),
          title: Text("Design"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "Services",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Account",
                backgroundColor: Colors.blue)
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3.0, horizontal: 0.0),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Choose Your ",
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          )))),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 0.0),
                                child: Text("Design Course ",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  border:
                                      Border.all(width: 2, color: Colors.grey)),
                              child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.person),
                                  iconSize: 25.0),
                            ))
                      ],
                    ))),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  // decoration: BoxDecoration(
                  //   boxShadow:[ BoxShadow(
                  //     color: Colors.grey,
                  //     blurRadius: 20,
                  //       offset: Offset(4, 8)
                  //   ),]
                  // ),
                  height: 40,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Here",
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            gapPadding: 5.0,
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                BorderSide(width: 2.0, color: Colors.blue))),
                  ),
                )),
            //category
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Container(
                  height: 30,
                  child: Text(
                    "Category",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                )),
            //buttons
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Computer",
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Psychology",
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Engineering",
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                  ),
                ),
              ],
            ),
            //horizontal items
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                  height: 140,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            color: Colors.blue,
                            child: Container(
                              height: 140,
                              width: 250,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 100,
                                    child:
                                        Image.network('https://bit.ly/3B8ZhE6'),
                                  ),
                                  Container(
                                      width: 150,
                                      height: 140,
                                      child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Text(
                                                "User Interface",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              Text("Design",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white)),
                                              Container(
                                                  child: Row(children: [
                                                Container(
                                                  width: 100,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text("24 Reviews",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                                Icon(Icons.star,
                                                    color: Colors.white),
                                              ])),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      30, 0, 0, 0),
                                                  child: Container(
                                                      width: 180,
                                                      height: 20,
                                                      child: Row(children: [
                                                        Text("\$1200",
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white)),
                                                        IconButton(
                                                          onPressed: null,
                                                          icon: Icon(
                                                              Icons
                                                                  .arrow_circle_right,
                                                              color:
                                                                  Colors.white,
                                                              size: 30),
                                                        ),
                                                      ]
                                                      )
                                                  )
                                              )
                                            ],
                                          )
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.blue,
                            child: Container(
                                height: 140,
                                width: 250,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 100,
                                      child: Image.network(
                                          'https://bit.ly/3B2fJpX'),
                                    ),
                                    Container(
                                        width: 150,
                                        height: 140,
                                        child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "User Interface",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                Text("Design",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        color: Colors.white)),
                                                Container(
                                                    child: Row(children: [
                                                      Container(
                                                        width: 100,
                                                        child: Align(
                                                          alignment:
                                                          Alignment.centerRight,
                                                          child: Text("24 Reviews",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                  color:
                                                                  Colors.white)),
                                                        ),
                                                      ),
                                                      Icon(Icons.star,
                                                          color: Colors.white),
                                                    ])),
                                                Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        30, 0, 0, 0),
                                                    child: Container(
                                                        width: 180,
                                                        height: 20,
                                                        child: Row(children: [
                                                          Text("\$1200",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .white)),
                                                          IconButton(
                                                            onPressed: null,
                                                            icon: Icon(
                                                                Icons
                                                                    .arrow_circle_right,
                                                                color:
                                                                Colors.white,
                                                                size: 30),
                                                          ),
                                                        ]
                                                        )
                                                    )
                                                )
                                              ],
                                            )
                                        )
                                    )

                                  ],
                                )),
                          ),
                          Card(
                            color: Colors.blue,
                            child: Container(
                                height: 140,
                                width: 250,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 100,
                                      child: Image.network(
                                          'https://bit.ly/3xcHScJ'),
                                    ),
                                    Container(
                                        width: 150,
                                        height: 140,
                                        child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "User Interface",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                Text("Design",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        color: Colors.white)),
                                                Container(
                                                    child: Row(children: [
                                                      Container(
                                                        width: 100,
                                                        child: Align(
                                                          alignment:
                                                          Alignment.centerRight,
                                                          child: Text("24 Reviews",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                  color:
                                                                  Colors.white)),
                                                        ),
                                                      ),
                                                      Icon(Icons.star,
                                                          color: Colors.white),
                                                    ])),
                                                Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        30, 0, 0, 0),
                                                    child: Container(
                                                        width: 180,
                                                        height: 20,
                                                        child: Row(children: [
                                                          Text("\$1200",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .white)),
                                                          IconButton(
                                                            onPressed: null,
                                                            icon: Icon(
                                                                Icons
                                                                    .arrow_circle_right,
                                                                color:
                                                                Colors.white,
                                                                size: 30),
                                                          ),
                                                        ]
                                                        )
                                                    )
                                                )
                                              ],
                                            )
                                        )
                                    )
                                  ],
                                )),
                          ),
                          Card(
                            color: Colors.blue,
                            child: Container(
                                height: 140,
                                width: 250,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 100,
                                      child: Image.network(
                                          'https://bit.ly/3U2d3Bp'),
                                    )
                                    ,
                                    Container(
                                        width: 150,
                                        height: 140,
                                        child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "User Interface",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                Text("Design",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        color: Colors.white)),
                                                Container(
                                                    child: Row(children: [
                                                      Container(
                                                        width: 100,
                                                        child: Align(
                                                          alignment:
                                                          Alignment.centerRight,
                                                          child: Text("24 Reviews",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                  color:
                                                                  Colors.white)),
                                                        ),
                                                      ),
                                                      Icon(Icons.star,
                                                          color: Colors.white),
                                                    ])),
                                                Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        30, 0, 0, 0),
                                                    child: Container(
                                                        width: 180,
                                                        height: 20,
                                                        child: Row(children: [
                                                          Text("\$1200",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .white)),
                                                          IconButton(
                                                            onPressed: null,
                                                            icon: Icon(
                                                                Icons
                                                                    .arrow_circle_right,
                                                                color:
                                                                Colors.white,
                                                                size: 30),
                                                          ),
                                                        ]
                                                        )
                                                    )
                                                )
                                              ],
                                            )
                                        )
                                    )
                                  ],
                                )),
                          ),
                        ],
                      )
                  )
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 30,vertical:10),
              child:
                Text("Popular Courses",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
            ),

            Container(
              height:250,width:double.infinity,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(16),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),

                        color: Colors.blue,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
       Text('App Design', style: TextStyle(fontSize: 17,color:Colors.white)),
       Text('Course', style: TextStyle(fontSize: 17,color:Colors.white)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('12 Reviews', style: TextStyle(fontSize: 17,color:Colors.white)),
          Icon(Icons.star,color: Colors.white),
          Icon(Icons.star,color: Colors.white),
          Icon(Icons.star,color: Colors.white),
        ],
      ),
      Container(
        height:130,width:330,
        child:Image.network('https://bit.ly/3U2d3Bp'),
      )


    ],
    )

                    ),
                    Container(
                      padding: const EdgeInsets.all(8),

                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Web Design', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Text('Course', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text('247 Reviews', style: TextStyle(fontSize: 17,color:Colors.white)),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                              ],
                            ),
                            Container(
                              height:130,width:330,
                              child:Image.network('https://img.freepik.com/free-vector/college-university-students-group-young-happy-people-standing-isolated-white-background_575670-66.jpg?size=626&ext=jpg&uid=R72636920'),
                            )


                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),

                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('C++', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Text('Course', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text('6 Reviews', style: TextStyle(fontSize: 17,color:Colors.white)),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                              ],
                            ),
                            Container(
                              height:130,width:330,
                              child:Image.network('https://img.freepik.com/free-vector/female-student-listening-webinar-online_74855-6461.jpg?size=626&ext=jpg&uid=R72636920'),
                            )


                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),

                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('JAVA', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Text('Course', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text('2 Reviews', style: TextStyle(fontSize: 17,color:Colors.white)),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                              ],
                            ),
                            Container(
                              height:130,width:330,
                              child:Image.network('https://img.freepik.com/free-vector/group-college-university-students-hanging-out_74855-5251.jpg?size=626&ext=jpg&uid=R72636920'),
                            )


                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),

                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Business Card Design', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Text('Course', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text('26 Reviews', style: TextStyle(fontSize: 17,color:Colors.white)),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                              ],
                            ),
                            Container(
                              height:130,width:330,
                              child:Image.network('https://img.freepik.com/free-vector/students-watching-webinar-computer-studying-online_74855-15522.jpg?size=626&ext=jpg&uid=R72636920'),
                            )


                          ],
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),

                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Logo Design', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Text('Course', style: TextStyle(fontSize: 17,color:Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text('19 Reviews', style: TextStyle(fontSize: 17,color:Colors.white)),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                                Icon(Icons.star,color: Colors.white),
                              ],
                            ),
                            Container(
                              height:130,width:330,
                              child:Image.network('https://img.freepik.com/free-vector/education-learning-concept-love-reading-people-reading-students-studying-preparing-examination-library-book-lovers-readers-modern-literature-flat-cartoon-vector-illustration_1150-60938.jpg?size=626&ext=jpg&uid=R72636920'),
                            )


                          ],
                        )
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
