import 'package:flutter/material.dart';
import 'package:anbessafit/presentation/widgets/searchbar.dart';
import 'package:anbessafit/presentation/widgets/navbar.dart';
import 'package:anbessafit/presentation/widgets/bottom_nav_bar.dart'; 
import 'package:anbessafit/presentation/widgets/carousel_slider.dart'; 

class HomePageHome extends StatefulWidget {
  const HomePageHome({Key? key}) : super(key: key);

  @override
  State<HomePageHome> createState() => _HomeState();
}

class _HomeState extends State<HomePageHome> {
   int _currentIndex = 0;

  void _onTap(int index) {
    if (index == 3) {

      Navigator.pushNamed(context, '/NutritionPage');
    } 
    else if (index == 1) {
      Navigator.pushNamed(context, '/Workoutplan');
    }
    else if (index == 2) {
      Navigator.pushNamed(context, '/ExercisePage');
    }
    else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'AnbessaFit',
          style: TextStyle(
            letterSpacing: 1.5,
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dummyMan.jpg'),
                  radius: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hi WELCOME, ',
                            style: TextStyle(
                              color: Colors.orange, // Change color as needed
                              fontSize: 20, // Change size as needed
                              fontWeight: FontWeight.bold, // Add fontWeight if desired
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8), // Add spacing between the texts
                    Text(
                      'Welcome Back to AnbessaFit',
                      style: TextStyle(
                        color: Colors.white, // Change color as needed
                        fontSize: 16, // Change size as needed
                        // Add other styles as needed
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            // Add the SearchBar widget here
            Searchbar(),
            SizedBox(height: 40),
            Text(
              'Discover Popular Workouts',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
SizedBox(height: 40),
            // Add the CarouselSlider here
            MyCarouselSlider(
              images: [
                'assets/pushUps.gif',
                'assets/chest_press.gif',
                'assets/jumpsquats.gif',
              ],
              captions: [
                'Push Ups \nPush-ups are a versatile bodyweight exercise that strengthens various muscle groups, enhancing overall upper body strength and stability',
                'Chest press \nis a compound exercise targeting the chest, shoulders, and triceps, aiding in building upper body strength and muscle mass',
                'Jump squats \nare dynamic lower body exercises that combine the benefits of squats with explosive power, improving strength, agility, and cardiovascular health',
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Nutrients for bodybuilding',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
SizedBox(height: 40),
            // Add the CarouselSlider here
            MyCarouselSlider(
              images: [
                'assets/avocados.jpg',
                'assets/beans.jpg',
                'assets/eggs.jpg',
              ],
              captions: [
                'Avocados\nare delicious and versatile fruits with a rich nutrition profile. They have many uses and are good for health.',
                'Beans\nare a versatile and nutritious source of plant-based protein, fiber, vitamins, and minerals, promoting digestive health, reducing cholesterol levels, and supporting weight management',
                'Eggs\nare a nutrient-dense food rich in high-quality protein, essential vitamins, and minerals, contributing to muscle repair, brain health, and overall well-being.',
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
