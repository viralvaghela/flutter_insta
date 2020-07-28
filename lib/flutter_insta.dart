import 'dart:convert';

import 'package:http/http.dart' as http;

class FlutterInsta {
  String url = "https://www.instagram.com/";
  String _followers, _following, _website, _bio, _imgurl, _username;

  String get followers => _followers;

  FlutterInsta(String username) {
    this._username = username;
  }


  Future<void> getData() async {
    var res = await http.get(Uri.encodeFull(url + _username + "/?__a=1"));
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
  }

  get following => _following;

  get website => _website;

  get bio => _bio;

  get imgurl => _imgurl;

  get username => _username;
}
