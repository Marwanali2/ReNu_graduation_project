import 'package:graduation_project/core/widgets/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

Future<void> launchCustomUrl(context, String? url, bool inApp) async {
  try {
    Uri uri = Uri.parse(url!);
    if (await canLaunchUrl(uri)) {
      if (inApp) {
        await launchUrl(
          uri,
          mode: LaunchMode.inAppWebView,
        );
      } else {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    }
  } catch (e) {
    print(e.toString());
    showSnackBar(
      context: context,
      label: "Cannot Launch  url ",
      backgroundColor: Colors.red,
    );
  }
}
