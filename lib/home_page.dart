import 'package:dribble_design/utility/faces.dart';
import 'package:dribble_design/utility/listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //hi jerald
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi Jerald',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23 Jan, 2021',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      //notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //search bar
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'Search'),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How Do You Feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //4 diff faces

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      //bad
                      Faces(
                        emojiicon: '🙂',
                        emojiname: 'Smile',
                      ),
                      //fine
                      Faces(
                        emojiicon: '😊',
                        emojiname: 'Happy',
                      ),
                      //well
                      Faces(
                        emojiicon: '😎',
                        emojiname: 'Cool',
                      ),
                      //excellent
                      Faces(
                        emojiicon: '🤗',
                        emojiname: 'Hug',
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),

                        //listview of exercises
                         Expanded(
                           child: ListView(
                            children: const [
                              ExerciseTile(iconImage: Icons.favorite,exercisename: 'Speaking Skills', subtitle: '15 exercises',),
                              ExerciseTile(iconImage: Icons.book, exercisename: 'Reading Skills',subtitle: '14 exercises', ),
                              ExerciseTile(iconImage: Icons.sports_soccer, exercisename: 'Football',subtitle: '10 exercise',),
                              ExerciseTile(iconImage: Icons.sports_cricket, exercisename: 'Cricket', subtitle: '20 exercises',),
                              ExerciseTile(iconImage: Icons.sports_gymnastics,exercisename: 'GYM',subtitle: '16 exercises',),
                              ExerciseTile(iconImage: Icons.nordic_walking, exercisename: 'Walking',subtitle: '18 exercises',),
 
                            ],
                           ),
                         )
                  
                      ],
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
