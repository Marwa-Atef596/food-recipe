// import 'package:flutter/material.dart';
// import 'package:food_recipe/features/home/logic/cubit/home_cubit.dart';
// import 'package:food_recipe/features/home/logic/cubit/home_state.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: BlocBuilder<HomeCubit, HomeScreen>(
//           builder: (context, state) {
//             if (state is HomeLoading) {
//               return const Center(child: CircularProgressIndicator());
//             }
//             return ElevatedButton(
//               onPressed: () {},
//               child: Text('data'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
