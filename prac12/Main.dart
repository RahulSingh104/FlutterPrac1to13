import 'dart:convert';
import 'package:flutter/material.dart'; import 'package:http/http.dart' as http;

void main() { runApp(MyApp());
}

class MyApp extends StatelessWidget { @override
Widget build(BuildContext context) { return MaterialApp(
title: 'Flutter Demo', home: PostListScreen(),
);
}
}

class Post { final int id;
final String title; final String body;
Post({required this.id, required this.title, required this.body}); factory Post.fromJson(Map<String, dynamic> json) {
return Post( id: json['id'],
title: json['title'], body: json['body'],a
);
}
}
class PostListScreen extends StatefulWidget { @override
_PostListScreenState createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> { late Future<List<Post>> futurePosts;

@override
void initState() { super.initState(); futurePosts = fetchPosts();
}
 

Future<List<Post>> fetchPosts() async { final response =
await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

if (response.statusCode == 200) {
List<dynamic> data = json.decode(response.body); return data.map((json) => Post.fromJson(json)).toList();
} else {
throw Exception('Failed to load posts');
}
}

@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar( title: Text('Posts'),
backgroundColor: Colors.amberAccent,
),
body: FutureBuilder<List<Post>>( future: futurePosts,
builder: (context, snapshot) {
if (snapshot.connectionState == ConnectionState.waiting) { return Center(child: CircularProgressIndicator());
} else if (snapshot.hasError) {
return Center(child: Text('Error: ${snapshot.error}'));
} else {
List<Post> posts = snapshot.data ?? []; return ListView.builder(
itemCount: posts.length, itemBuilder: (context, index) { return Card(
margin: EdgeInsets.all(8.0), elevation: 4.0,
child: ListTile(
title: Text(posts[index].title, style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text(posts[index].body),
),
);
},
);
}
},
),
);
}
}
