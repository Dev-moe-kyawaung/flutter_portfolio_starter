import 'package:url_launcher/url_launcher.dart';

class LaunchService {
  const LaunchService._();

  static Future<bool> openUrl(String url) async {
    final uri = Uri.parse(url);
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  static Future<bool> openEmail({
    required String email,
    String subject = '',
    String body = '',
  }) async {
    final uri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        if (subject.isNotEmpty) 'subject': subject,
        if (body.isNotEmpty) 'body': body,
      },
    );
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  static Future<bool> openPhone(String phone) async {
    final uri = Uri(scheme: 'tel', path: phone);
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
