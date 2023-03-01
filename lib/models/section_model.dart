class SectionModel {
  final int id;
  final String name;
  final String count;
  const SectionModel(
      {required this.id, required this.name, required this.count});
  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
        id: json['id'], name: json[' name'], count: json['count']);
  }
}
