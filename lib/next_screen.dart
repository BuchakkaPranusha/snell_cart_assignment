import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 40.0,bottom: 20.0),
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          decoration:  const BoxDecoration(
            // borderRadius: BorderRadius.all(Radius.circular(16)),
            image:  DecorationImage(
                image: AssetImage('assets/street.jpeg'),
                fit: BoxFit.fill
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 60,
                  left: 150,
                  child:container(context,"Geriatrics", '18.44 %',)),
              Positioned(
                  top: 110,
                  left: 80,
                  child:container(context,"Oftmatology", '20.95 %',)),
              Positioned(
                  top:350,
                  left:30,
                  child:container(context,"Psychiatry", '19.44 %',)),
              Positioned(
                top: 500,
                  right: 30,
                  child:container(context,"Children pavilion", '22.82 %',)),
            ],
          ),
        ),
      ),
    );
  }
}
Widget container(BuildContext context,String title,String subTitle,){
  return Container(
    height: MediaQuery.of(context).size.height/15,
    // width:150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white),
      color: Colors.black54,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.favorite_border,color: Colors.white,),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(title,style:const TextStyle(color: Colors.white,fontSize: 16,),),
            ),
            Text(subTitle,style:const TextStyle(color: Colors.white,fontSize: 12,),)
          ],
        ),
        Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
        )
        )],
    ),
  );
}
