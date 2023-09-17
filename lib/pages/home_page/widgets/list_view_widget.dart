import 'package:flutter/material.dart';

import '../../../constants/app_functional_list.dart';
import 'list_view_container.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListViewContainer(
          index: index,
          iconData: AppFunctionalList.functionalIconList[index],
        );
      },
      // padding: EdgeInsets.all(14),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: AppFunctionalList.functionalStringList.length,
    );
  }
}
