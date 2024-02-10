import 'package:eazio/widgets/app_bar.dart';
import 'package:eazio/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.mainAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              headerWidget(),
              const Divider(
                height: 30,
                thickness: 1,
                color: CustomColor.grey,
              ),
              insightWidget(),
              const SizedBox(
                height: 30,
              ),
              summaryWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Organization Insights.",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5),
        ),
        Text(
          "Track Your Organization Stats Insights.",
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black54,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonWidget(
          onPressed: () {},
          text: "Manage Widgets",
          textFont: 19,
          textWeight: FontWeight.bold,
          textColor: Colors.black87,
          btnBorderColor: CustomColor.grey,
          btnColor: Colors.white,
          icon: Icon(
            Icons.add,
            color: Colors.black87,
            size: 8.w,
          ),
          btnWidth: 55.w,
        ),
      ],
    );
  }

  Widget insightWidget() {
    return Container(
      decoration: const BoxDecoration(
        color: CustomColor.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        image: DecorationImage(
          image: ExactAssetImage("assets/pattern.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Welcome Back, Jhon!",
                          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                        ),
                        Text(
                          "Take A Look at Our Weekly Reports",
                          style: TextStyle(fontSize: 9.sp, color: Colors.white),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ButtonWidget(
                      onPressed: () {},
                      text: "",
                      btnBorderColor: CustomColor.grey,
                      icon: ImageIcon(
                        const AssetImage("assets/link.png"),
                        color: CustomColor.primary,
                        size: 5.w,
                      ),
                      btnColor: Colors.white,
                      btnWidth: 12.w,
                      btnHeight: 12.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            thickness: 1,
            color: CustomColor.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Average Late & Overtime",
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: CustomColor.grey.withOpacity(0.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '25 ',
                              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Min',
                                  style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Avg. Lateness',
                            style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ButtonWidget(
                            onPressed: () {},
                            text: "15%",
                            textFont: 19,
                            textWeight: FontWeight.bold,
                            textColor: Colors.red,
                            btnBorderColor: Colors.redAccent,
                            btnColor: Colors.white,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Colors.red,
                              size: 5.w,
                            ),
                            btnWidth: 20.w,
                            btnHeight: 37,
                            btnPadding: 5,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '5 ',
                              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Hr ',
                                  style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                                ),
                                TextSpan(
                                  text: '15 ',
                                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                                ),
                                TextSpan(
                                  text: 'Min',
                                  style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Avg. Overtime',
                            style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ButtonWidget(
                            onPressed: () {},
                            text: "15%",
                            textFont: 19,
                            textWeight: FontWeight.bold,
                            textColor: Colors.green,
                            btnBorderColor: Colors.greenAccent,
                            btnColor: Colors.white,
                            icon: Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                              size: 5.w,
                            ),
                            btnWidth: 20.w,
                            btnHeight: 37,
                            btnPadding: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Payroll Finance",
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: CustomColor.grey.withOpacity(0.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'AED 43.20K',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                          ),
                          Text(
                            'Total Processed',
                            style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ButtonWidget(
                            onPressed: () {},
                            text: "15%",
                            textFont: 19,
                            textWeight: FontWeight.bold,
                            textColor: Colors.green,
                            btnBorderColor: Colors.greenAccent,
                            btnColor: Colors.white,
                            icon: Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                              size: 5.w,
                            ),
                            btnWidth: 20.w,
                            btnHeight: 37,
                            btnPadding: 5,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'AED 105.40K',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                          ),
                          Text(
                            'Avg. Overtime',
                            style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ButtonWidget(
                            onPressed: () {},
                            text: "15%",
                            textFont: 19,
                            textWeight: FontWeight.bold,
                            textColor: Colors.red,
                            btnBorderColor: Colors.redAccent,
                            btnColor: Colors.white,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Colors.red,
                              size: 5.w,
                            ),
                            btnWidth: 20.w,
                            btnHeight: 37,
                            btnPadding: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Activity",
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                          ),
                          Divider(
                            height: 30,
                            thickness: 1,
                            color: CustomColor.grey.withOpacity(0.5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '22',
                                      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                    Text(
                                      'Avg.\nLeaves',
                                      style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                    Text(
                                      'Avg.\nAttendance',
                                      style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Head Count",
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                          ),
                          Divider(
                            height: 30,
                            thickness: 1,
                            color: CustomColor.grey.withOpacity(0.5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '1283',
                                      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                    Text(
                                      'Total\nEmployees',
                                      style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '250',
                                      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                    Text(
                                      'Total\nInternship',
                                      style: TextStyle(fontSize: 10.sp, letterSpacing: -0.5, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget summaryWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: CustomColor.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(
          color: CustomColor.grey,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Attendance Summary",
                      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, letterSpacing: -0.5),
                    ),
                    const Spacer(),
                    ButtonWidget(
                      onPressed: () {},
                      text: "",
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 7.w,
                      ),
                      btnWidth: 10.w,
                      btnColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SegmentedButton<int>(
                  onSelectionChanged: (Set<int> i) {
                    setState(() {
                      selected = i.first;
                    });
                  },
                  selected: {selected},
                  showSelectedIcon: false,
                  style: ButtonStyle(
                    iconColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          );
                        }
                        return const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        );
                      },
                    ),
                    foregroundColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                      return states.contains(MaterialState.selected) ? Colors.red : Colors.black;
                    }),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return Colors.red.shade100;
                        }
                        return Colors.white;
                      },
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(
                        width: 2,
                        color: Colors.grey.shade300,
                        style: BorderStyle.solid,
                      ),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  segments: const <ButtonSegment<int>>[
                    ButtonSegment<int>(
                      value: 0,
                      icon: Text("Today"),
                      enabled: true,
                    ),
                    ButtonSegment<int>(
                      value: 1,
                      icon: Text("This Week"),
                    ),
                    ButtonSegment<int>(
                      value: 2,
                      icon: Text("This Month"),
                    ), // ButtonSegment<int>(
                    //   value: 3,
                    //   icon: Icon(Icons.minimize_rounded),
                    // ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            height: 30,
            thickness: 1,
            color: CustomColor.grey,
          ),
          const Divider(
            height: 30,
            thickness: 1,
            color: CustomColor.grey,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
            child: Row(
              children: [
                Text(
                  "Learn More",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.grey, letterSpacing: -0.5),
                ),
                const Spacer(),
                ButtonWidget(
                  onPressed: () {},
                  text: "View Full Report",
                  textFont: 12.sp,
                  textWeight: FontWeight.bold,
                  textColor: Colors.black54,
                  btnColor: Colors.white,
                  btnBorderColor: Colors.grey.shade300,
                  btnWidth: 40.w,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
