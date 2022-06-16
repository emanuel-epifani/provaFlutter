import 'dart:convert';

Example exampleFromJson(String str) => Example.fromJson(json.decode(str));

String exampleToJson(Example data) => json.encode(data.toJson());

class Example {
  Example({
    required this.title,
    required this.body,
  });

  String title;
  String body;

  factory Example.fromJson(Map<String, dynamic> json) => Example(
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "body": body,
  };
}
