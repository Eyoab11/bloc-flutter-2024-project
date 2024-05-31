import 'package:flutter/material.dart';



class WeightGainScreen extends StatelessWidget {
  const WeightGainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Weight Gain Plan', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      backgroundColor: Colors.black,

      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      

        ),
      body: Padding(
    
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: const Text(
                  'Weight Gain Advice:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
             const SizedBox(height: 10),
              const Text(
                '1. Set Realistic Goals: Define clear and achievable goals for your weight gain journey. Aim for a gradual increase in muscle mass and overall body weight.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '2. Nutrient-Dense Foods: Focus on consuming nutrient-dense foods such as lean proteins, healthy fats, complex carbohydrates, and plenty of fruits and vegetables.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '3. Caloric Surplus: Consume more calories than your body burns in a day to create a caloric surplus, which is essential for weight gain.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '4. Strength Training: Incorporate strength training exercises into your workout routine to build muscle mass and promote healthy weight gain.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '5. Proper Rest and Recovery: Ensure you get enough rest and recovery between workouts to support muscle growth and overall well-being.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '6. Stay Hydrated: Drink plenty of water throughout the day to stay hydrated and support optimal bodily functions.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '7. Monitor Progress: Keep track of your weight gain progress, muscle mass changes, and overall health to make necessary adjustments.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '8. Consistency is Key: Stay consistent with your nutrition, exercise, and lifestyle habits to achieve your weight gain goals effectively.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '9. Seek Professional Advice: Consider consulting with a nutritionist or fitness expert for personalized guidance and support.',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '10. Listen to Your Body: Pay attention to your body\'s hunger and fullness cues, and make adjustments to your diet and exercise regimen accordingly.',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/weight_gain.jpg', 
                height: 200, 
                fit: BoxFit.contain, 
              ),
              const Text(
                'Calorie Calculator',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter Your Information:'),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Age'),
                        keyboardType: TextInputType.number,
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Height (cm)'),
                        keyboardType: TextInputType.number,
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Weight (kg)'),
                        keyboardType: TextInputType.number,
                      ),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(child: Text('Male'), value: 'male'),
                          DropdownMenuItem(child: Text('Female'), value: 'female'),
                        ],
                        onChanged: (value) {
                          // Handle gender selection
                        },
                        decoration: const InputDecoration(labelText: 'Gender'),
                      ),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(child: Text('Sedentary'), value: 'sedentary'),
                          DropdownMenuItem(child: Text('Moderate'), value: 'moderate'),
                          DropdownMenuItem(child: Text('Active'), value: 'active'),
                        ],
                        onChanged: (value) {
                          // Handle activity level selection
                        },
                        decoration: const InputDecoration(labelText: 'Activity Level'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Calculate calories
                        },
                        child: const Text('Calculate Calories'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Current Weight Gain Plan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              const SizedBox(height: 20),
         Card(
  color: Colors.white, // Set card background color to white
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
  children: [
    Text(
      'Weight losing Goal in Kg:',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18, 
      ),
    ),
    SizedBox(width: 10), 
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10), // Make the container round
        ),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '10',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18, 
          ),
        ),
      ),
    ),
  ],
),
SizedBox(height: 40,),
        Row(
  children: [
    Text(
      'Starting Date:',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18, 
      ),
    ),
    SizedBox(width: 10), 
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10), // Make the container round
        ),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'April 20 2024',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18, // Increase text size
          ),
        ),
      ),
    ),
  ],
),
SizedBox(height: 40,),
        Row(
  children: [
    Text(
      'Due Date:',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18, 
      ),
    ),
    SizedBox(width: 10), 
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10), // Make the container round
        ),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'May 20 2024',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18, // Increase text size
          ),
        ),
      ),
    ),
  ],
),
SizedBox(height: 40,),
        Row(
  children: [
    Text(
      'Burnt Calorie Goal:',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18, 
      ),
    ),
    SizedBox(width: 10), 
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10), // Make the container round
        ),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '30000',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18, // Increase text size
          ),
        ),
      ),
    ),
  ],
),
SizedBox(height: 40,),
        Row(
  children: [
    Text(
      'Weight lost:',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18, 
      ),
    ),
    SizedBox(width: 10), 
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10), // Make the container round
        ),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18, // Increase text size
          ),
        ),
      ),
    ),
  ],
),
SizedBox(height: 40,),
        Row(
  children: [
    Text(
      'Calorie Burnt:',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18, 
      ),
    ),
    SizedBox(width: 10), 
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10), // Make the container round
        ),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '10000',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18, // Increase text size
          ),
        ),
      ),
    ),
  ],
),

        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement edit functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Button background color
              ),
              child: Text(
                'Edit Plan',
                style: TextStyle(
                  color: Colors.orange, // Text color of the button text
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, 
              ),
              child: Text(
                'Delete Plan',
                style: TextStyle(
                  color: Colors.orange, 
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),


              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.pushNamed(
                  context,'/CreatePlanWeightGain'
                   );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Text color of the button
                ),
                child: const Text(
                  'Create plan',
                  style: TextStyle(
                    color: Colors.white, // Text color of the button text
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}