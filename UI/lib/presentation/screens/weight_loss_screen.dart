import 'package:flutter/material.dart';
import '../screens/create_plan_page_weight_loss.dart';


class WeightLossScreen extends StatelessWidget {
  const WeightLossScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Weight Loss Plan', style: TextStyle(color: Colors.white)),
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
                  'Weight Loss Advice:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              const Text('1. Set Realistic Goals: Define clear and achievable goals for your weight loss journey. Aim for gradual and steady progress rather than quick fixes.', style: TextStyle(color: Colors.white)),
              const Text('2. Balanced Nutrition: Focus on a balanced diet that includes a variety of fruits, vegetables, lean proteins, whole grains, and healthy fats. Monitor your calorie intake and consider portion control.', style: TextStyle(color: Colors.white)),
              const Text('3. Stay Hydrated: Drink plenty of water throughout the day. Sometimes, thirst can be mistaken for hunger.', style: TextStyle(color: Colors.white)),
              const Text('4. Regular Exercise: Incorporate regular physical activity into your routine. Aim for a mix of cardio exercises and strength training.', style: TextStyle(color: Colors.white)),
              const Text('5. Mindful Eating: Practice mindful eating by paying attention to hunger cues, eating slowly, and savoring your meals. Avoid emotional eating.', style: TextStyle(color: Colors.white)),
              const Text('6. Get Adequate Sleep: Prioritize quality sleep to support overall health and weight management. Aim for 7-9 hours of sleep per night.', style: TextStyle(color: Colors.white)),
              const Text('7. Manage Stress: Find healthy ways to manage stress, such as relaxation techniques or mindfulness practices.', style: TextStyle(color: Colors.white)),
              const Text('8. Seek Support: Consider seeking guidance from healthcare professionals or support groups if needed.', style: TextStyle(color: Colors.white)),
              const Text('9. Track Progress: Keep track of your progress to stay motivated and celebrate achievements along the way.', style: TextStyle(color: Colors.white)),
              const Text('10. Be Patient and Persistent: Weight loss takes time and effort. Stay committed to your goals and focus on making sustainable lifestyle changes.', style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),
              Image.asset(
                'assets/weight_loss1.png', 
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
                'Current Weight Loss Plan',
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
                // Implement delete functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Button background color
              ),
              child: Text(
                'Delete Plan',
                style: TextStyle(
                  color: Colors.orange, // Text color of the button text
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
                  context, '/CreatePlanWeightLoss');
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