import 'package:anbessafit/nutrition/model/weight.dart';
import 'package:flutter/material.dart';


class WeightGainScreen extends StatefulWidget {
  const WeightGainScreen({Key? key}) : super(key: key);

  @override
  _WeightGainScreenState createState() => _WeightGainScreenState();
}

class _WeightGainScreenState extends State<WeightGainScreen> {
  WeightGainPlan? _currentPlan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Weight Gain Plan', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
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
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Weight Gain Goal in Kg:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _currentPlan?.weightGainGoal.toString() ?? 'N/A',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Starting Date:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _currentPlan?.startingDate.toString() ?? 'N/A',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Due Date:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _currentPlan?.dueDate.toString() ?? 'N/A',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Burnt Calorie Goal:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _currentPlan?.burntCalorieGoal.toString() ?? 'N/A',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                                            const SizedBox(height: 20),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Calorie Burnt:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _currentPlan?.calorieBurnt.toString() ?? 'N/A',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
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
                  // Implement a method to refresh or edit the plan
                },
                child: const Text('Edit Plan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

