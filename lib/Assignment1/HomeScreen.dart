import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            elevation: 16.0,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(16.0), // Adjust the radius as needed
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(
                                16)), // Adjust the radius as needed
                        child: Image.network(
                          "https://wallpapercave.com/wp/wp6851449.jpg",
                          height: 400,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 18, left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios, color: Colors.white),
                            Icon(Icons.more_vert_outlined, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(32.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nusa Penida",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54)),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            "Picture",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                          
                                  SizedBox(
                                  width: 4.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 4,),
            
            
                                      ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                          
                                  SizedBox(
                                  width: 4.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 4,),
                          
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      8)), // Adjust the radius as needed
                                  child: Image.network(
                                    "https://wallpapercave.com/wp/wp6851449.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                
                          
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          Row(children: [
                          Text("More in Bali ",style: TextStyle(fontSize: 18,color: Colors.green),),
                          Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Colors.green,)
            
                          ],)
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
