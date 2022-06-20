import 'package:bindtest/theme/colors.dart';
import 'package:bindtest/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/transactions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: const Icon(
          Icons.chevron_left_outlined,
          color: kTextColor2,
        ),
        actions: const [
          Icon(
            Icons.save_alt_outlined,
            color: kTextColor2,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              CircleAvatar(
                radius: 40.r, // Image radius
                backgroundImage: const AssetImage('assets/images/1.1.png'),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('sasasasaa'),
                    Text(
                      'USD Account',
                      style: TextStyle(color: kTextColor1, fontSize: 20.sp),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kBackgroundColor,
                        onPrimary: kTextColor1,
                        side: BorderSide(color: kTextColor1, width: 1.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                      child: Text(
                        "Hide",
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                '\$ 180,970.83',
                style: TextStyle(color: kTextColor2, fontSize: 27.sp),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Transactions History',
                    style: TextStyle(color: kTextColor1, fontSize: 20.sp),
                  ),
                ),
              ),
              const DropButton(),
              Row(
                children: [
                  const DropButtons(),
                  SizedBox(
                    height: 48.h,
                    width: 48.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kBackgroundColor,
                        onPrimary: kTextColor1,
                        side: BorderSide(color: kTextColor1, width: 1.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      child: const Icon(Icons.calendar_today_outlined),
                    ),
                  )
                ],
              ),
              const Transaction(),
            ],
          ),
        ),
      ),
    );
  }
}
