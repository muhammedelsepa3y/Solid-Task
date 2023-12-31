import '1-post_database.dart';
import '2-posts_classes.dart';

void main(List<String> args) {
  PostDatabase db = PostDatabase();

  List<String> posts = [];

  posts.add('ORIGINAL POST');
  posts.add('#TAG POST');
  posts.add('@MENTION POST');

  Post postObj;

  for (var post in posts) {
    if (post.startsWith('#'))
      postObj = TagPost();
    else if (post.startsWith('@'))
      postObj = MentionPost();
    else
      postObj = SimplePost();

    String result = postObj.createPost(db, post);
    print(result);
  }
}
