import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/widgets/details_Screen/bottomCartDetailsScreen.dart';
import 'package:movies_app/widgets/details_Screen/movie_content.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie Name',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/Image_dora.png",
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: height * 0.25,
                ),
                Positioned(
                  bottom: width * 0.2,
                  left: width * 0.45,
                  child: const Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.009,
            ),
            Container(
              padding: EdgeInsets.only(left: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Dora and the Lost City of Gold',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    '2019 PG · 1h 42m',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.grayColor),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Movie_content(
                    selectedToWatchList: false,
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xff282A28),
              margin: EdgeInsets.only(top: width * 0.05,),
              padding: EdgeInsets.symmetric(vertical: width * 0.035,horizontal:width*0.035),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "More like this",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Container(
                    height: height*0.24,
                    margin: EdgeInsets.only(top: width * 0.02),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: width * 0.04,
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const BottomCartDetailsScreen();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Expanded(
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,            
                  //     shrinkWrap: true,
                  //     itemCount: 4,
                  //     itemBuilder: (context,index){
                  //     return Column(
                  //       children: [
                  //         // Stack(children:[
                  //         //   Container(
                  //         //     height:80,
                  //         //     child: Image.asset("assets/images/Image.png",
                  //         //     height: double.infinity,
                  //         //     width: double.infinity,
                  //         //       fit: BoxFit.fill,
                  //         //     ),
                  //         //   ),
                  //         //   Positioned(
                  //         //     top: 0,
                  //         //     left:0,
                  //         //     child: Icon(Icons.bookmark,
                  //         //       color: AppColors.grayColor,
                  //         //       size: 40,),
                  //         //   ),
                  //         //   Positioned(
                  //         //       top: 7,
                  //         //       left: 9,
                  //         //       child: Icon(Icons.add,
                  //         //         color: AppColors.whiteColor,
                  //         //         size: 20,
                  //         //       ))
                  //         // ]),
                  //       ],
                  //     );
                  //   }),
                  // )
                  
