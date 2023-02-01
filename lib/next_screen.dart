import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.45,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD2IP0nytWPLDSehBze2YG4UreDxRsCTTwxw&usqp=CAU'),
            fit: BoxFit.fill
        ),
        // color: Colors.pinkAccent.withOpacity(0.2),
        // gradient: const  LinearGradient(
        //   colors: [
        //     Colors.black,
        //     Colors.greenAccent
        //   ],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // ),
        // boxShadow:  [
        //   BoxShadow(
        //     color: Colors.blue.withOpacity(0.5),
        //   ),
        // ],
      ),
      child: Stack(
        children: [
          Positioned(
              top: 80,
              left: 80,
              child:container("Geriatrics", '18.44 %', context)),
          Positioned(
              top: 60,
              left: 80,
              child:container("Oftmatology", '20.95 %', context)),
          Positioned(child:container("Psychiatry", '19.44 %', context)),
          Positioned(child:container("Children pavilion", '22.82 %', context)),
        ],
      ),
    );
  }
}
Widget container(String title,String subTitle,BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height /30,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white),
      color: Colors.black12,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.favorite_border),
        Column(
          children: [
            Text(title,style:const TextStyle(color: Colors.white,fontSize: 18,),),
            Text(subTitle,style:const TextStyle(color: Colors.white,fontSize: 14,),)
          ],
        ),
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
        )
        )],
    ),
  );
}
