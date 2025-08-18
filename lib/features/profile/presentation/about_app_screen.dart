import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/profile/data/models/about_app_response_model.dart';
import 'package:black_market/features/profile/logic/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../logic/profile_state.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({super.key});

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen>
    with AutomaticKeepAliveClientMixin<AboutAppScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  AboutAppResponseModel? aboutData;

  Future<void> loadData() async {
    try {
      var aboutAppBox = Hive.box<AboutAppResponseModel>(kAboutAppBox);
      var aboutAppData = aboutAppBox.get(kAboutAppData);
      if (aboutAppData != null) {
        setState(() {
          aboutData = aboutAppData;
        });
      } else {
        context.read<ProfileCubit>().getAboutApp();
        debugPrint("No user data found in Hive box.");
      }
    } catch (e) {
      context.read<ProfileCubit>().getAboutApp();
      debugPrint("Error loading data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.aboutApp),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(32),
            Text(
              AppString.importantNotes,
              style: AppStyles.font18WhiteSemiBold,
            ),
            verticalSpace(16),
            BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                return state.maybeWhen(
                    aboutAppLoading: () => setupLoading(),
                    aboutAppSuccess: (data) {
                      if (aboutData == null) {
                        setState(() {
                          aboutData = data;
                        });
                      }
                      return setupSuccess(data);
                    },
                    aboutAppFailure: (error) => setupError(error),
                    orElse: () {
                      if (aboutData != null) {
                        return setupSuccess(aboutData!);
                      }
                      return SizedBox.shrink();
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget setupLoading() {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryColor,
      ),
    );
  }

  Center setupError(String error) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font18WhiteSemiBold,
      ),
    );
  }

  Widget setupSuccess(AboutAppResponseModel data) {
    return Html(
      data: data.aboutText,
      style: {
        "body": Style(
          fontSize: FontSize(18.0.sp),
          color: Colors.white,
          textAlign: TextAlign.justify,
        ),
        "span": Style(
          backgroundColor: AppColors.lightYellowColor,
          color: Colors.black,
        ),
        "mark": Style(
          color: Colors.black, // Text color inside highlight
          padding: HtmlPaddings.all(4),
        ),
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
