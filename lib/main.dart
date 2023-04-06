import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task_data.dart';
import 'package:todo_list_app/screens/tasks_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}


// PROVIDER DEMO
// import 'package:flutter/material.dart';
// import 'package:todo_list_app/screens/tasks_screen.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // return MaterialApp(home: TasksScreen());
//     return ChangeNotifierProvider(
//       create: (context) => Data(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: MyText(),
//           ),
//           body: Level1(),
//         ),
//       ),
//     );
//   }
// }

// class Level1 extends StatelessWidget {
//   const Level1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Level2(),
//     );
//   }
// }

// class MyText extends StatelessWidget {
//   const MyText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text(Provider.of<Data>(context).data);
//   }
// }

// class Level2 extends StatelessWidget {
//   const Level2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         MyTextField(),
//         Level3(),
//       ],
//     );
//   }
// }

// class Level3 extends StatelessWidget {
//   const Level3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text(Provider.of<Data>(context).data);
//   }
// }

// class MyTextField extends StatelessWidget {
//   const MyTextField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: (newValue) {
//         Provider.of<Data>(context, listen: false).changeString(newValue);
//       },
//     );
//   }
// }

// class Data extends ChangeNotifier {
//   String data = '123456';

//   void changeString(String newString) {
//     data = newString;
//     notifyListeners();
//   }
// }
