import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String txt = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Telefon"),
        actions: [
          InkWell(onTap: () {}, child: Icon(Icons.search)),
          InkWell(onTap: () {}, child: Icon(Icons.more_vert))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: Text(
                txt,
                style: TextStyle(fontSize: 50),
              )),
            ),
            Expanded(
              flex: 1,
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 1.toString();
                          });
                        },
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 2.toString();
                          });
                        },
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 3.toString();
                          });
                        },
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 4.toString();
                          });
                        },
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 5.toString();
                          });
                        },
                        child: Text(
                          "5",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 6.toString();
                          });
                        },
                        child: Text(
                          "6",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 7.toString();
                          });
                        },
                        child: Text(
                          "7",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 8.toString();
                          });
                        },
                        child: Text(
                          "8",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 9.toString();
                          });
                        },
                        child: Text(
                          "9",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += "*";
                          });
                        },
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 70.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += 0.toString();
                          });
                        },
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            txt += "#";
                          });
                        },
                        child: Text(
                          "#",
                          style: TextStyle(fontSize: 50.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            txt += 1.toString();
                          });
                        },
                        icon: Image.asset("assets/icons/google-meet.png", height: 50, width: 50,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      maxRadius: 50,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            txt = "";
                          });
                        },
                        icon: Icon(Icons.phone, color: Colors.white, size: 50,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            String txt1 = "";
                            for(int i = 0; i<txt.length-1; i++){
                              txt1 += txt[i];
                            }
                            txt = txt1;
                          });
                        },
                        icon: Icon(Icons.clear, size: 50,)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
