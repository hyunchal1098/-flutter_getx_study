import 'package:flutter/material.dart';
import 'package:flutter_getx_study/controller/controller.dart';
import 'package:flutter_getx_study/personal_card.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

/// Simple State Manager with GetBuilder
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // Controller controller = Get.put(Controller());

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("GetX"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               /// state가 변할때마다 화면을 다시 그려줌
//               /// 어떤 타입의 데이터를 사용할지 모르므로 데이터 타입 전달
//               GetBuilder<Controller>(
//                 init: Controller(),
//                 builder: (controller) {
//                   return Text(
//                     // "Current value is ${controller.x}",
//                     "Current value is ${Get.find<Controller>().x}",
//                     style: const TextStyle(
//                       fontSize: 20,
//                       color: Colors.red,
//                     ),
//                   );
//                 },
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Get.find<Controller>().increment();
//                     },
//                     child: const Text("Add number"),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Get.find<Controller>().init();
//                     },
//                     child: const Text("return to zero"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


/// Reactive State Manager
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PersonalCard(),
    );
  }
}