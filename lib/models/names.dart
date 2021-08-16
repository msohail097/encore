class Data {
  Data(this.name, this.btn);

  final String name;
  final String btn;

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    return Data(
      parsedJson['name'].toString(),
      parsedJson['btn'].toString(),
    );
  }
}