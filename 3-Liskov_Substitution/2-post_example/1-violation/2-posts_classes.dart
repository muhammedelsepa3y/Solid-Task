import '1-post_database.dart';

abstract class Post {
  String createPost(PostDatabase db, String post);
}

class SimplePost implements Post {
  String createPost(PostDatabase db, String post) {
    return db.addPost(post);
  }
}

class TagPost implements Post {
  String createPost(PostDatabase db, String post) {
    return db.addTagPost(post);
  }
}

class MentionPost implements Post {
  String createPost(PostDatabase db, String post) {
    return db.addMentionPost(post);
  }
}
