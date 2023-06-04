import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/screens/tabs.dart';



class FitnessAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
      ),
      body: ListView(
        children: <Widget>[
          // Carousel Slider
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
            ),
            items: [
              // Track Workout Feature
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabsScreen())
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 200,
                    height: 180,
                    child: Center(
                     child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
             'https://img.freepik.com/free-photo/young-fitness-man-studio_7502-5008.jpg?w=826&t=st=1685896837~exp=1685897437~hmac=1366217f5671749cef81bef51b3288b13477e24a0758a022a0956992ad7a9c33'
            ,fit: BoxFit.cover,
            //width: double.infinity,
           height: double.infinity,
            ),
          ),
        ),
      ),
    ),
              ),
              // Video Tutorial Feature
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>TabsScreen()),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 200,
                    height: 180,
                    child: Center(
                      child: Text(
                        'Video Tutorial',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // To-Do Tasks Feature
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabsScreen()),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 200,
                    height: 180,
                    child: Center(
                      child: Text(
                        'To-Do Tasks',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Divider(),

          // Other List Tiles
          ListTile(
            leading: Icon(Icons.directions_run),
            title: Text('Track Workout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.video_library),
            title: Text('Video Tutorial'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.check_box),
            title: Text('To-Do Tasks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}