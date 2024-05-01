import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/images_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
class dashboard_simple_banner extends StatelessWidget {
  const dashboard_simple_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(bDashboradCardPadding - 5.0),
            decoration: BoxDecoration(
              color: bCardBgColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.blue.shade900,
                        )),
                    Flexible(
                        child: Image(
                          image: AssetImage(bDashboardBannerImg1),
                        )),
                  ],
                ),
                SizedBox(height: bDashboradCardPadding - 10),
                Text(
                  bDashboardBannerTitle1,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.apply(fontSizeFactor: 0.8),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bDashboardBannerSubTitle1,
                  style: Theme.of(context).textTheme.labelLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: bDashboradCardPadding - 10),
              ],
            ),
          ),
        ),
        SizedBox(width: 5.0),
        Expanded(
          child: Column(
            children: [
              Container(
                padding:
                EdgeInsets.all(bDashboradCardPadding - 5.0),
                decoration: BoxDecoration(
                    color: bCardBgColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            child: Icon(
                              Icons.bookmark_add_rounded,
                              color: Colors.green.shade900,
                            )),
                        Flexible(
                            child: Image(
                                image: AssetImage(
                                    bDashboardBannerImg2)))
                      ],
                    ),
                    Text(
                      bDashboardBannerTitle2,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.apply(fontSizeFactor: 0.8),
                    ),
                    Text(bDashboardBannerSubTitle2,
                        style:
                        Theme.of(context).textTheme.labelLarge),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(7.0))),
                  onPressed: () {},
                  child: Center(
                    child: Text("View All"),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
