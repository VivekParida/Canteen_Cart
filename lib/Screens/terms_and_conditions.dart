// import 'package:flutter/material.dart';
// import 'package:mr_corporate/Screens/sign_up.dart';

// class TermsAndConditionsState extends StatefulWidget {
//   const TermsAndConditionsState({Key? key}) : super(key: key);

//   @override
//   State<TermsAndConditionsState> createState() =>
//       _TermsAndConditionsStateState();
// }

// class _TermsAndConditionsStateState extends State<TermsAndConditionsState> {
//   bool agree = false;

//   void _doSomething() {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => SignUpState()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: EdgeInsets.all(48),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "Terms and Conditions",
//               style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 32,
//             ),
//             Text(
//               "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis nibh convallis commodo, sit hendrerit enim mauris. Et, ullamcorper consectetur scelerisque id condimentum sed luctus. Pellentesque erat congue ac nulla nulla ornare tempor maecenas sagittis. Est ac sed odio vestibulum semper faucibus morbi. Tortor accumsan malesuada sed non ut consequat. Suspendisse est aliquam ultrices ut magna faucibus. Morbi scelerisque penatibus feugiat varius netus dui malesuada elementum. Adipiscing diam neque pellentesque ornare diam metus, nulla. Risus at at scelerisque magna enim eros, gravida mus. Fringilla et vestibulum placerat mattis. Donec ultricies aliquam porta euismod lectus eu elementum. Turpis placerat vitae risus cursus amet feugiat vitae. Justo, accumsan, venenatis diam aliquam. Nunc tortor ultricies arcu duis ipsum gravida pharetra lobortis arcu. In metus lorem pulvinar proin aenean in ullamcorper magna. Ut sed feugiat odio mi. Facilisis amet dui at non et risus scelerisque. Vestibulum eu nunc duis nec, lacinia rhoncus dignissim. Orci sem fermentum lacus egestas odio venenatis quis suscipit. Consequat enim nulla cursus massa odio vulputate ut. Dui viverra feugiat adipiscing enim enim aliquam. Aliquet feugiat vestibulum enim id nulla ac. Condimentum suspendisse at mattis mattis vel. Sit mattis ut est elementum facilisis. Non quisque arcu odio molestie tellus sed. Elementum enim elementum sed aliquam pharetra mauris aliquet ultrices. Sit in ac proin nibh etiam ornare netus. Pulvinar sagittis porta viverra metus, nam et amet adipiscing tincidunt. Purus feugiat sed tincidunt posuere vestibulum. Vitae ridiculus posuere purus id sed. Eget lorem eu viverra a, mattis at. Quam commodo purus urna magna ultricies. Aliquam euismod viverra aliquam sem convallis ut lectus amet. Elit posuere convallis consectetur nulla magna. Pretium pellentesque aliquam nunc tortor a eu. ",
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//             ),
//             Spacer(),
//             Row(
//               children: [
//                 Checkbox(
//                   value: agree,
//                   onChanged: (value) {
//                     setState(() {
//                       agree = value ?? false;
//                     });
//                   },
//                 ),
//                 Expanded(
//                   child: const Text(
//                     'I hereby accept the terms fufjgfand conditions of the application and agree to continue.',
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 2,
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             SizedBox(
//               height: 53,
//               width: 333,
//               child: ElevatedButton(
//                 onPressed: () {
//                   agree ? _doSomething() : null;
//                   // Navigator.push(context,
//                   //     MaterialPageRoute(builder: (context) => SignUpState()));
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromRGBO(238, 118, 35, 1),
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(8))),
//                 ),
//                 child: Text(
//                   "Agree and Continue",
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
