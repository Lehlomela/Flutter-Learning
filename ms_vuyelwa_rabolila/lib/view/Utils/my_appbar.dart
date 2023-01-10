import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/colors.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/contants.dart';

import '../Text/VuyelwaHeadings.dart';
import 'colors_2.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({Key? key, this.title = Constants.appName}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: VeeColors2.colorTwo,
      foregroundColor: VeeColors2.textColorTwo,

      title: Heading(
        heading: title,
        fontSize: 18,
      ),
      actions: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.message_sharp,
                    size: 20,
                  )
                ]))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
