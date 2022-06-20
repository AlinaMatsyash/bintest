import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/data.dart';
import '../theme/colors.dart';
import 'divider.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kTextColor2,
      child: Column(
        children: [
          ListView.builder(
            itemCount: image1.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  index == 0
                      ? Container(
                          color: kBody1,
                          width: 360.w,
                          height: 40.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Yeasterday')),
                          ),
                        )
                      : Container(),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 15.r, // Image radius
                      backgroundImage: AssetImage(image1[index]),
                    ),
                    title: Text(name1[index]),
                    subtitle: const Text('12:23'),
                    trailing: Text(transaction1[index]),
                  ),
                  index != image1.length - 1 ? divider1() : Container(),
                ],
              );
            },
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
          ListView.builder(
            itemCount: image2.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  index == 0
                      ? Container(
                          color: kBody1,
                          width: 360.w,
                          height: 40.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                            ),
                            child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Sat, Dec 11')),
                          ),
                        )
                      : Container(),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 15.r, // Image radius
                      backgroundImage: AssetImage(image2[index]),
                    ),
                    title: Text(name2[index]),
                    subtitle: const Text('12:23'),
                    trailing: Text(transaction2[index]),
                  ),
                  index != image2.length - 1 ? divider1() : Container(),
                ],
              );
            },
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
          ListView.builder(
            itemCount: image3.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  index == 0
                      ? Container(
                          color: kBody1,
                          width: 360.w,
                          height: 40.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Thurs, Dec 9'),
                            ),
                          ),
                        )
                      : Container(),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 15.r, // Image radius
                      backgroundImage: AssetImage(image3[index]),
                    ),
                    title: Text(name3[index]),
                    subtitle: const Text('12:23'),
                    trailing: Text(transaction3[index]),
                  ),
                  index != image3.length - 1 ? divider1() : Container(),
                ],
              );
            },
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
