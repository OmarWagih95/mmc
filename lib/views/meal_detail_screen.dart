// import 'package:flutter/material.dart';
// import '/widget/dummy_data.dart';

// class MealDetailScreen extends StatelessWidget {
//   static const routeName = '/meal-detail';
//   Widget MyContainer(child) {
//     return Container(
//       child: child,
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.all(5),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(10)),
//       height: 200,
//       width: 300,
//     );
//   }

//   Widget TextWidget(BuildContext context, String text) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: Text(
//         text,
//         style: Theme.of(context).textTheme.titleMedium,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final routeArgs =
//         ModalRoute.of(context)!.settings.arguments as Map<String, String>;
//     final String MealId = routeArgs['id'] ?? '';
//     final Meals = DUMMY_MEALS.firstWhere((meal) => meal.id == MealId);
//     return Scaffold(
//       appBar: AppBar(title: Text('hi')),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 300,
//               width: double.infinity,
//               child: Image.network(
//                 Meals.imageUrl,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             TextWidget(context, 'ingredients'),
//             MyContainer(ListView.builder(
//               itemBuilder: (ctx, index) {
//                 return Card(
//                     color: Theme.of(context).hintColor,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('${Meals.ingredients[index]}'),
//                     ));
//               },
//               itemCount: Meals.ingredients.length,
//             )),
//             TextWidget(context, 'Steps'),
//             MyContainer(ListView.builder(
//               itemBuilder: (ctx, index) {
//                 return Column(
//                   //column for divider
//                   children: [
//                     ListTile(
//                         leading: CircleAvatar(
//                           child: Text(' #${index + 1}'),
//                         ),
//                         subtitle: Padding(
//                           padding: const EdgeInsets.all(3),
//                           child: Text('${Meals.steps[index]}'),
//                         )),
//                     const Divider()
//                   ],
//                 );
//               },
//               itemCount: Meals.steps.length,
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
