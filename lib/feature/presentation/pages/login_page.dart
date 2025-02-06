import 'package:flutter/material.dart';

import '../../../constant/utils/theme_styles.dart';
import '../../../constant/utils/responsive.dart';
import '../widget/login_page_widget/auth.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constrains){
       
         
            return Container(
                 width: constrains.maxWidth,
        height: size.height,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/sujashoei.jpeg'),fit: BoxFit.cover)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // if (Responsive.isDesktop(context))
                        //   SizedBox(
                        //       width: 450,
                        //       child: Image.asset('assets/images/sujashoei.jpeg',
                        //       )),
                        const SizedBox(width: defaultPadding),
                        if (Responsive.isDesktop(context))
                          Container(
                            height: 400,
                            width: 500,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(193, 189, 189, 189),
                                borderRadius: BorderRadiusDirectional.circular(5)),
                            child: const SizedBox(
                              width: 450,
                              child: Auth(),
                            ),
                          ),
                      ],
                    ),
                    // if (!Responsive.isDesktop(context))
                    //   SizedBox(
                    //       width: 450,
                    //       child: Image.asset('assets/images/sujashoei.jpeg')),
                    const SizedBox(height: defaultPadding),
                     if (!Responsive.isDesktop(context))
                          Container(
                            height: 350,
                            width: 400,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(193, 189, 189, 189),
                                borderRadius: BorderRadiusDirectional.circular(5)),
                            child: const SizedBox(
                              width: 350,
                              child: Auth(),
                            ),
                          ),
                  ]),
            );
          }
        ),
      ),
    );
  }
}





// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: LayoutBuilder(builder: (context, constrains){
//         return Container(
//         width: constrains.maxWidth,
//         height: size.height,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/images/sujashoei.jpeg'),
//                 fit: BoxFit.cover)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [SizedBox(
//                     height: 100,
//                     child: SizedBox(
//                         height: 150,
//                         width: 250,
//                         child: Image.asset('assets/images/prominousshoeilogo.png'))),
//             Container(
//               decoration: BoxDecoration(
//                 color: const Color.fromRGBO(224, 224, 224, 1),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               width: 350,
//               height: 400,
//               alignment: Alignment.center,
//               child: const Login(),
//             ),
//           ],
//         ),
//       );
//       })
//     ));
//   }
// }