import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SOS {
  void sharePhotoToWhatsApp(String mobileNumber, String imagePath) async {
    String url = 'whatsapp://send?phone=$mobileNumber&text=$imagePath';
    print(url);
    launchUrlString(url);
  }
}
