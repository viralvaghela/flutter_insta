import 'dart:convert';

import 'package:http/http.dart' as http; // import http package for API calls

class FlutterInsta {
  String url = "https://www.instagram.com/";
  String? _followers, _following, _website, _bio, _imgurl, _username;
  // List of images from user feed
  List<String>? _feedImagesUrl;

  //Download reels video
  Future<String> downloadReels(String link) async {
    var linkEdit = link.replaceAll(" ", "").split("/");
    var downloadURL = await http.get(Uri.parse(
        '${linkEdit[0]}//${linkEdit[2]}/${linkEdit[3]}/${linkEdit[4]}' +
            "?__a=1&__d=dis"));
    var data = json.decode(downloadURL.body);
    var graphql = data['graphql'];
    var shortcodeMedia = graphql['shortcode_media'];
    var videoUrl = shortcodeMedia['video_url'];
    return videoUrl; // return download link
  }

  //get profile details
  Future<void> getProfileData(String username) async {
    var res = await http.get(Uri.parse(Uri.encodeFull(url +
        username +
        "/?__a=1&__d=dis"))); // adding /?__a=1&__d=dis at the end will return json data
    var data = json.decode(res.body);
    var graphql = data['graphql'];
    var user = graphql['user'];
    var biography = user['biography'];
    _bio = biography;
    var myfollowers = user['edge_followed_by'];
    var myfollowing = user['edge_follow'];
    _followers = myfollowers['count'].toString();
    _following = myfollowing['count'].toString();
    _website = user['external_url'];
    _imgurl = user['profile_pic_url_hd'];
    _feedImagesUrl = user['edge_owner_to_timeline_media']['edges']
        .map<String>((image) => image['node']['display_url'] as String)
        .toList();
    this._username = username;
  }

  String? get followers => _followers; // number of followers of the user

  get following => _following; // number of following on the user

  get username => _username; // Username of the user

  get website => _website; // Link in the bio

  get bio => _bio; // Instagram bio of the user

  get imgurl => _imgurl; // Profile picture URL

  List<String>? get feedImagesUrl =>
      _feedImagesUrl; // List of URLs of feed images
}
