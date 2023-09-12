import 'package:electricity_facilities/utils/logger.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/common_size.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext , BoxConstraints ) {
        Size size = MediaQuery.of(context).size;
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: common_padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,                    ),
                Text('SWU 기숙사',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Theme.of(context).colorScheme.primary)),
                SizedBox(
                    height: size.height/1.5,
                    child: ExtendedImage.asset('assets/imgs/shalomhouseImg.png')),
                const Text('기숙사 시설보수신청 관리 어플 앱입니다'),
                const SizedBox(
                  height: 19,
                ),
                TextButton(
                  onPressed: () async {
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor
                  ),
                  child: Text(
                      '         기숙사 앱 시작하기         ',
                      style: Theme.of(context).textTheme.button ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
