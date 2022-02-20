import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class AppUtils {
  //Build a dynamic link firebase
  static Future<String> buildDynamicLink() async {
    String url = "https://reprezentme.page.link";
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: url,
      link: Uri.parse('$url/post/56'),
      androidParameters: AndroidParameters(
        packageName: "com.example.testing_packages",
        minimumVersion: 0,
      ),
      iosParameters: IosParameters(
        bundleId: "com.example.dynamicLinkDemo",
        minimumVersion: '0',
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
          description: "Once upon a time in the town",
          imageUrl:
              Uri.parse("https://flutter.dev/images/flutter-logo-sharing.png"),
          title: "Breaking Code's Post"),
    );
    final ShortDynamicLink dynamicUrl = await parameters.buildShortLink();
    return dynamicUrl.shortUrl.toString();
  }
}
