import 'package:flutter/material.dart';

import 'package:fitness_app/models/category.dart';
import 'package:fitness_app/models/workout.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
Category(
id: 'c1',
title: 'Cardio',
color: Colors.purple,
),
Category(
id: 'c2',
title: 'Strength Training',
color: Colors.red,
),
Category(
id: 'c3',
title: 'Yoga',
color: Colors.orange,
),
Category(
id: 'c4',
title: 'Pilates',
color: Colors.amber,
),
Category(
id: 'c5',
title: 'HIIT',
color: Colors.blue,
),
Category(
id: 'c6',
title: 'Cycling',
color: Colors.green,
),
Category(
id: 'c7',
title: 'Running',
color: Colors.lightBlue,
),
Category(
id: 'c8',
title: 'Dance',
color: Colors.lightGreen,
),
Category(
id: 'c9',
title: 'Flexibility',
color: Colors.pink,
),
Category(
id: 'c10',
title: 'All',
color: Colors.teal,
),
];

const dummyWorkouts = [
  Workout(
    id: 'm1',
    categories: [
      'c1',
      'c5',
      'c10',
    ],
    title:  'High-Intensity Interval Training (HIIT)',
    vidurl:'https://www.youtube.com/watch?v=J212vz33gU4',
    description: [
                 'Burn calories and increase endurance with this intense workout'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.intermediate,
    imageUrl:
        'https://lmimirroralphapvr.azureedge.net/static/media/7629/3f587500-ddc3-415b-a7c0-a8272bba87a7/hiit_960x540-v2.jpg',
          
    duration: 30,
    equipments: [
      'None'
    ],
    steps: [
      '1. Warm up for 5 minutes with light jogging or jumping jacks.',
'2.Perform the following exercises in a 30 seconds work, 10 seconds rest format:',
'-Burpees',
'-Mountain climbers',
'-Jump squats',
'-High knees',
'-Plank jacks',
'Rest for 10 seconds.',
'3.Repeat steps 2 and 3 for a total of 8 rounds.',
'4.Cool down for 5 minutes with light stretching exercises.'
    ],
    isfatloss: true,
    ismusclegain: false,
    isnoequipments: true,
    isgymmachine: false,
  ),
   Workout(
    id: 'm2',
    categories: [
      'c9',
      'c2',
      'c10',
    ],
    title:  'Upper Body Blast',
    vidurl:'https://www.youtube.com/watch?v=IJKPh47zKTk',
    description: [
                 'Sculpt and strengthen your upper body with this targeted workout.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.intermediate,
    imageUrl:
        'https://2lazy4gym.files.wordpress.com/2021/07/cgcomplexseriesday2.jpg?w=1200g',
          
    duration: 40,
    equipments: [
      'Dumbell',
      'Bench(optional)'
    ],
    steps: [
      '1. Warm up for 5 minutes with arm circles and shoulder rolls.',
      '2. Perform the following exercises with 3 sets of 12 repetitions each:',
       '- Dumbbell bench press',
   '- Bent-over rows',
   '- Overhead press',
   '- Bicep curls',
    ],
    isfatloss: false,
    ismusclegain: true,
    isnoequipments: false,
    isgymmachine: true,
  ),
  Workout(
    id: 'm3',
    categories: [
      'c3',
      'c10',
      
    ],
    title:  'Energizing Morning Yoga Flow',
    vidurl:'https://www.youtube.com/watch?v=UEEsdXn8oG8',
    description: [
                 'Start your day with this energizing yoga flow to awaken your body and mind.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.beginner,
    imageUrl:
        'https://blog-images-1.pharmeasy.in/blog/production/wp-content/uploads/2021/02/01200417/shutterstock_324427688-1.jpg',
          
    duration: 30,
    equipments: [
      'Yoga mat',
      
    ],
    steps: [
      '1. Begin in a seated position on your mat.',
      '2. Perform the following yoga poses:',
    '-Cat-Cow pose',
   '-Downward-facing Dog',
    '-Warrior I',
    '-Warrior II',
   '-Triangle pose',
   '-Tree pose',
   '-Child\'s pose',
   '-Corpse pose',
       
    ],
    isfatloss: false,
    ismusclegain: false,
    isnoequipments: true,
    isgymmachine: false,
  ),
Workout(
    id: 'm4',
    categories: [
      'c8',
      'c1',
      'c9',
      'c7',
      'c10',
    ],
    title:  'Zumba Dance Party',
    vidurl:'https://www.youtube.com/watch?v=tmpV2u1HD0I',
    description: [
                 'Get your heart pumping and groove to the beat with this fun Zumba dance workout.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.beginner,
    imageUrl:
        'https://www.kreedon.com/wp-content/uploads/2023/03/WhatsApp-Image-2020-12-08-at-12.10.59-PM-5.jpeg',
          
    duration: 60,
    equipments: [
      'None',
      
    ],
    steps: [
      '1. Follow along with the Zumba instructor\'s dance routines.',
      '2. Move to the rhythm of various dance styles, including salsa, merengue, hip-hop, and more.',
      '3. Stay hydrated and take breaks as needed.',
      '4. Enjoy the music and let loose on the dance floor!'
    
    ],
    isfatloss: true,
    ismusclegain: false,
    isnoequipments: true,
    isgymmachine: false,
  ),
Workout(
    id: 'm5',
    categories: [
      'c4',
      'c2',
      'c10',
    ],
    title:  'Pilates Core Strengthening',
    vidurl:'https://www.youtube.com/watch?v=U5LwQW_IQOc',
    description: [
                 'Sculpt and strengthen your core muscles with this Pilates-inspired workout.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.intermediate,
    imageUrl:
        'https://assets.sweat.com/html_body_blocks/images/000/021/480/original/PilatesCoreMoves_en87ff3960350295920d818c1a6806a7df.jpg?1620017466',
          
    duration: 30,
    equipments: [
      'Exercise mat',
      
    ],
    steps: [
      '1. Start by lying on your back on the mat.',
      '2. Perform the following Pilates exercises',
     ' Hundred',
'-Roll-ups',
'-Single-leg stretch',
'-Double-leg stretch',
'-Scissor kicks',
'-Pilates plank',
'-Side plank'
      '3. Complete 2 sets of 10 repetitions for each exercise.',
      '4. Rest for 30 seconds between sets.',
      '5.Finish with 5 minutes of stretching exercises.'
    
    ],
    isfatloss: false,
    ismusclegain: true,
    isnoequipments: true,
    isgymmachine: false,
  ),

Workout(
    id: 'm6',
    categories: [
      'c9',
      'c2',
      'c10',
    ],
    title:  'Total Body Strength Training',
    vidurl:'https://www.youtube.com/watch?v=USi3LmPlj_0',
    description: [
                 'Build strength and tone your muscles with this full-body strength training workout.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.advanced,
    imageUrl:
        'https://builtwithscience.com/wp-content/uploads/2019/01/full-body-workout-A-thumbnail-min.jpg',
          
    duration: 45,
    equipments: [
      'Exercise mat',
      ' Dumbbells'
      
    ],
    steps: [
      '1. Warm up with 5 minutes of light cardio, such as jogging or cycling.',
      '2. Perform the following exercises:',
     ' -Squats with dumbbells',
'-Lunges with dumbbells',
'-Push-ups',
'-Dumbbell rows',
'-Shoulder press with dumbbells',
'-Bicep curls with dumbbells',
'-Tricep dips'
      '3. Complete 3 sets of 12 repetitions for each exercise',
      '4. Rest for 1 minute between sets.',
      '5. Cool down with 5 minutes of stretching exercises.'
    
    ],
    isfatloss: false,
    ismusclegain: true,
    isnoequipments: false,
    isgymmachine: true,
  ),
  Workout(
    id: 'm7',
    categories: [
      'c1',
      'c5',
      'c6',
      'c10',
    ],
    title:  'Tabata Fat Burner',
    vidurl:'https://www.youtube.com/watch?v=d8BFKmkmxV4',
    description: [
                 'Burn calories and improve endurance with this high-intensity Tabata workout.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.advanced,
    imageUrl:
        'https://i.ytimg.com/vi/p4sileExjLo/maxresdefault.jpg',
          
    duration: 20,
    equipments: [
      'None'
      
    ],
    steps: [
      '1. Perform the following exercises in a Tabata interval format (20 seconds work, 10 seconds rest):',
      
'-Jumping jacks',
'-Burpees',
'-High knees',
'-Mountain climbers',
'-Squat jumps',
'2. Complete 8 rounds of each exercise.',
'3. Rest for 1 minute between exercises.',
'4. Cool down with 5 minutes of stretching exercises.'

    
    ],
    isfatloss: true,
    ismusclegain: false,
    isnoequipments: false,
    isgymmachine: false,
  ),
  Workout(
    id: 'm8',
    categories: [
      'c3',
      'c10',
      
    ],
    title:  'Restorative Yoga for Stress Relief',
    vidurl:'https://www.youtube.com/watch?v=sTANio_2E0Q',
    description: [
                 'Release tension and find inner calm with this restorative yoga sequence.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.beginner,
    imageUrl:
        'https://i.ytimg.com/vi/hJbRpHZr_d0/maxresdefault.jpg',
          
    duration: 45,
    equipments: [
      'Yoga mat',
      ' Bolster or Cushions',
       'Blanket'
      
    ],
    steps: [
      '1.Set up a comfortable space with your yoga mat, bolster or cushions, and a blanket.',
      '2. Perform the following restorative yoga poses',
     ' -Supported child\'s pose',
'-Supported bridge pose',
'-Legs up the wall pose',
'-Reclining bound angle pose',
'-Corpse pose with bolster under knees',

      '3. Hold each pose for 5-10 minutes, allowing your body to relax deeply.',
      '4. Focus on your breath and let go of any tension or stress.',
      '5. End the practice with 10 minutes of guided relaxation or meditation.'
    
    ],
    isfatloss: false,
    ismusclegain: false,
    isnoequipments: true,
    isgymmachine: false,
  ),
  
   Workout(
    id: 'm9',
    categories: [
      'c1',
      'c6',
      'c5',
      'c10',
    ],
    title:  'Indoor Cycling Intervals',
    vidurl:'https://www.youtube.com/watch?v=dFv15REmXsg',
    description: [
                 'Boost your cardiovascular fitness and endurance with this indoor cycling workout.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.intermediate,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod/images/sportsmen-working-out-hard-on-cycling-machines-royalty-free-image-845636176-1565175905.jpg',
          
    duration: 45,
    equipments: [
      'Stationary bike',
      
      
    ],
    steps: [
      '1.Adjust the bike seat and handlebars to the appropriate height.',
      '2. Perform the following cycling intervals:',
     ' -Warm up with 5 minutes of easy pedaling.',
'-Alternate between 2 minutes of moderate intensity and 1 minute of high intensity for 30 minutes.',
'-Cool down with 5 minutes of easy pedaling.',


      '3. Follow your preferred RPM (revolutions per minute) range for each intensity level.',
      '4. Stay hydrated and maintain proper form throughout the workout.',
      
    
    ],
    isfatloss: true,
    ismusclegain: false,
    isnoequipments: false,
    isgymmachine: true,
  ),
   Workout(
    id: 'm10',
    categories: [
      
      'c2',
      'c10',
    ],
    title:  'Lower Body Blast',
    vidurl:'https://www.youtube.com/watch?v=_PRk8DH2_mY',
    description: [
                 'Sculpt and strengthen your lower body muscles with this targeted workout.'
      
    ],
    affordability: Affordability.affordable,
    difficulty: Difficulty.advanced,
    imageUrl:
        'https://builtwithscience.com/wp-content/uploads/2020/12/Lower-body-workout-dumbbells-only-thumbnail.jpg',
          
    duration: 30,
    equipments: [
      'Dumbbells',
      'Exercise Mat'
      
      
    ],
    steps: [
      '1.Warm up with 5 minutes of light cardio, such as marching or jogging in place.',
      '2. Perform the following exercises:',
     ' -Goblet squats with dumbbell',
'-Lunges with dumbbells',
'-Deadlifts with dumbbells',
'-Glute bridges with dumbbell on hips'
'-Calf raises with dumbbells',
'-Side lunges with dumbbells'


      '3. Complete 3 sets of 12 repetitions for each exercise.',
      '4. Rest for 30 seconds between sets.',
      '5. Cool down with 5 minutes of stretching exercises.'
    
    ],
    isfatloss: true,
    ismusclegain: true,
    isnoequipments:false,
    isgymmachine:false,
  ),
 







];