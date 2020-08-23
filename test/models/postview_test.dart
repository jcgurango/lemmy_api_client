import 'dart:convert';

import 'package:lemmy_api_client/src/models/post.dart';
import 'package:test/test.dart';

void main() {
  test('PostView test', () {
    Map<String, dynamic> postJson = jsonDecode('''
      {
        "id": 38501,
        "name": "Niklaus Wirth was right and that is a problem",
        "url": "https://bowero.nl/blog/2020/07/31/niklaus-wirth-was-right-and-that-is-a-problem/",
        "body": null,
        "creator_id": 8218,
        "community_id": 14680,
        "removed": false,
        "locked": false,
        "published": "2020-08-02T01:56:28.072727",
        "updated": null,
        "deleted": false,
        "nsfw": false,
        "stickied": false,
        "embed_title": "Niklaus Wirth was right and that is a problem",
        "embed_description": null,
        "embed_html": null,
        "thumbnail_url": null,
        "ap_id": "https://dev.lemmy.ml/post/38501",
        "local": true,
        "creator_actor_id": "https://dev.lemmy.ml/u/yogthos",
        "creator_local": true,
        "creator_name": "yogthos",
        "creator_preferred_username": null,
        "creator_published": "2020-01-18T04:02:39.254957",
        "creator_avatar": "https://dev.lemmy.ml/pictrs/image/bwk1q2.png",
        "banned": false,
        "banned_from_community": false,
        "community_actor_id": "https://dev.lemmy.ml/c/programming",
        "community_local": true,
        "community_name": "programming",
        "community_icon": null,
        "community_removed": false,
        "community_deleted": false,
        "community_nsfw": false,
        "number_of_comments": 4,
        "score": 8,
        "upvotes": 8,
        "downvotes": 0,
        "hot_rank": 1,
        "hot_rank_active": 1,
        "newest_activity_time": "2020-08-02T20:31:19.303284",
        "user_id": 13709,
        "my_vote": 0,
        "subscribed": false,
        "read": false,
        "saved": false
      }''');

    var post = PostView.fromJson(postJson);

    expect(post.id, 38501);
    expect(post.name, 'Niklaus Wirth was right and that is a problem');
    expect(post.url,
        'https://bowero.nl/blog/2020/07/31/niklaus-wirth-was-right-and-that-is-a-problem/');
    expect(post.body, null);
    expect(post.creatorId, 8218);
    expect(post.communityId, 14680);
    expect(post.removed, false);
    expect(post.locked, false);
    expect(post.published, DateTime.parse('2020-08-02T01:56:28.072727'));
    expect(post.updated, null);
    expect(post.deleted, false);
    expect(post.nsfw, false);
    expect(post.stickied, false);
    expect(post.embedTitle, 'Niklaus Wirth was right and that is a problem');
    expect(post.embedDescription, null);
    expect(post.embedHtml, null);
    expect(post.thumbnailUrl, null);
    expect(post.apId, 'https://dev.lemmy.ml/post/38501');
    expect(post.local, true);
    expect(post.creatorActorId, 'https://dev.lemmy.ml/u/yogthos');
    expect(post.creatorLocal, true);
    expect(post.creatorName, 'yogthos');
    expect(post.creatorPreferredUsername, null);
    expect(post.creatorPublished, DateTime.parse('2020-01-18T04:02:39.254957'));
    expect(post.creatorAvatar, 'https://dev.lemmy.ml/pictrs/image/bwk1q2.png');
    expect(post.banned, false);
    expect(post.bannedFromCommunity, false);
    expect(post.communityActorId, 'https://dev.lemmy.ml/c/programming');
    expect(post.communityLocal, true);
    expect(post.communityName, 'programming');
    expect(post.communityIcon, null);
    expect(post.communityRemoved, false);
    expect(post.communityDeleted, false);
    expect(post.communityNsfw, false);
    expect(post.numberOfComments, 4);
    expect(post.score, 8);
    expect(post.upvotes, 8);
    expect(post.downvotes, 0);
    expect(post.hotRank, 1);
    expect(post.hotRankActive, 1);
    expect(
        post.newestActivityTime, DateTime.parse('2020-08-02T20:31:19.303284'));
    expect(post.userId, 13709);
    expect(post.myVote, 0);
    expect(post.subscribed, false);
    expect(post.read, false);
    expect(post.saved, false);
  });
}