import 'package:flutter/material.dart';
import 'package:moten/core/constant/coloer.dart';
import 'package:moten/data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget{
  const OnBoarding({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: SafeArea(
      child: Column(
       children:[
          Expanded(
            flex: 2,
            child: PageView.builder(
              itemCount: onBoardingList.length,
                itemBuilder: (context,i) => Column(
                  children: [
                    Text(onBoardingList[i].title!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 20)),
                    const SizedBox( height:80),
                    Image.asset(onBoardingList[i].image!,width: 200,height: 230,fit: BoxFit.fill,),
                    const SizedBox( height:80),
                    Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child:Text(onBoardingList[i].body!,textAlign:TextAlign.center,
                          style:const TextStyle(height: 2,color: ColorApp.grey,fontWeight: FontWeight.bold),)),
                  ],
                ),
             ),
          ),
         Expanded(
           flex: 1,
             child: Column(
               children:[

               ],
         ))
       ])
      ),
    );



  }



}
