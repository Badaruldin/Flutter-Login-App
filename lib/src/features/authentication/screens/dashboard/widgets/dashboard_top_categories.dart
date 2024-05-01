import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/images_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class dashboard_top_categories extends StatelessWidget {
  const dashboard_top_categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 220.0,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) =>SizedBox(
            width: MediaQuery.of(context).size.width *0.95,
            height: 220.0,
            child: Container(
              padding: EdgeInsets.all(bDashboradCardPadding - 5.0),
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: bCardBgColor,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                          child: Text(
                            bDashboardCardTitle1,
                            style: Theme.of(context).textTheme.headlineSmall,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Flexible(
                          child: Image(
                              image:
                              AssetImage(bDashboardBannerCourseImg),
                              width: 180.0))
                    ],
                  ),
                  SizedBox(height: bDashboradPadding),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.play_arrow_sharp,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder()),
                      ),
                      SizedBox(width: bDashboradCardPadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bDashboardCardBottomTitle1,
                            style:
                            Theme.of(context).textTheme.headlineSmall,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            bDashboardScrollableSubTitle1,
                            style:
                            Theme.of(context).textTheme.bodyLarge,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

        ),
    );
  }
}




//SizedBox(width: bDashboradPadding-5.0),
//           SizedBox(
//             width: MediaQuery.of(context).size.width *0.95,
//             height: 220.0,
//             child: Container(
//               padding: EdgeInsets.all(bDashboradCardPadding - 5.0),
//               margin: EdgeInsets.symmetric(vertical: 10.0),
//               decoration: BoxDecoration(
//                   color: bCardBgColor,
//                   borderRadius: BorderRadius.circular(10.0)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Flexible(
//                           child: Text(
//                             bDashboardCardTitle2,
//                             style: Theme.of(context).textTheme.headlineSmall,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           )),
//                       Flexible(
//                           child: Image(
//                               image:
//                               AssetImage(bDashboardBannerCourseImg),
//                               width: 180.0))
//                     ],
//                   ),
//                   SizedBox(height: bDashboardPadding),
//                   Row(
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Icon(
//                           Icons.play_arrow_sharp,
//                           color: Colors.white,
//                         ),
//                         style: ElevatedButton.styleFrom(
//                             shape: CircleBorder()),
//                       ),
//                       SizedBox(width: bDashboradCardPadding),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             bDashboardCardBottomTitle2,
//                             style:
//                             Theme.of(context).textTheme.headlineSmall,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           Text(
//                             bDashboardScrollableSubTitle2,
//                             style:
//                             Theme.of(context).textTheme.bodyLarge,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           )
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(width: bDashboradPadding-5.0),
//           SizedBox(
//             width: MediaQuery.of(context).size.width *0.95,
//             height: 220.0,
//             child: Container(
//               padding: EdgeInsets.all(bDashboradCardPadding - 5.0),
//               margin: EdgeInsets.symmetric(vertical: 10.0),
//               decoration: BoxDecoration(
//                   color: bCardBgColor,
//                   borderRadius: BorderRadius.circular(10.0)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Flexible(
//                           child: Text(
//                             bDashboardCardTitle3,
//                             style: Theme.of(context).textTheme.headlineSmall,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           )),
//                       Flexible(
//                           child: Image(
//                               image:
//                               AssetImage(bDashboardBannerCourseImg),
//                               width: 180.0))
//                     ],
//                   ),
//                   SizedBox(height: bDashboradPadding),
//                   Row(
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Icon(
//                           Icons.play_arrow_sharp,
//                           color: Colors.white,
//                         ),
//                         style: ElevatedButton.styleFrom(
//                             shape: CircleBorder()),
//                       ),
//                       SizedBox(width: bDashboradCardPadding),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             bDashboardCardBottomTitle3,
//                             style:
//                             Theme.of(context).textTheme.headlineSmall,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           Text(
//                             bDashboardScrollableSubTitle3,
//                             style:
//                             Theme.of(context).textTheme.bodyLarge,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           )
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),