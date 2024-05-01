import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';
class dashboard_searchbar extends StatelessWidget {
  const dashboard_searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bDashboardSearch,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.apply(color: Colors.black.withOpacity(0.3))),
        Icon(Icons.search_outlined)
      ],
    );
  }
}
