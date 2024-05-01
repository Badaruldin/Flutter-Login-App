import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_strings.dart';
class dashboard_categories_banner extends StatelessWidget {
  const dashboard_categories_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 180,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bDarkColor),
                  child: Center(
                    child: Text(bDashboardScrollableTitle1[0],
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.apply(
                            fontSizeFactor: 1.2,
                            color: bWhiteColor)),
                  ),
                ),
                SizedBox(width: 5.0),
                Flexible(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bDashboardScrollableTitle1,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(bDashboardScrollableSubTitle1,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 180,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue),
                  child: Center(
                    child: Text(bDashboardScrollableTitle2[0],
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.apply(
                            fontSizeFactor: 1.2,
                            color: bWhiteColor)),
                  ),
                ),
                SizedBox(width: 5.0),
                Flexible(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bDashboardScrollableTitle2,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(bDashboardScrollableSubTitle2,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 180,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.purple),
                  child: Center(
                    child: Text(bDashboardScrollableTitle3[0],
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.apply(
                            fontSizeFactor: 1.2,
                            color: bWhiteColor)),
                  ),
                ),
                SizedBox(width: 5.0),
                Flexible(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bDashboardScrollableTitle3,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(bDashboardScrollableSubTitle3,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
