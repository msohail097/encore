class Covid {
  Covid(this.name);

  final String name;

  factory Covid.fromJson(Map<String, dynamic> parsedJson) {
    return Covid(
      parsedJson['name'].toString(),
    );
  }
}