class RestResponse<M> {
  final bool success;
  final String message;
  final List<M> data;

  RestResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory RestResponse.fromJson(Map<String, dynamic> json,
      Function(Map<String, dynamic> json) dataDeSerializer) {
    return RestResponse(
      success: json['success'],
      message: json['message'],
      data: json['data'] is List
          ? (json['data'] as List).map<M>((e) => dataDeSerializer(e)).toList()
          : json['data'],
    );
  }
}

class SectionResponse<M> {
  final String title;
  final List<M> categories;

  SectionResponse({
    required this.title,
    required this.categories,
  });

  factory SectionResponse.fromJson(Map<String, dynamic> json,
      Function(Map<String, dynamic> json) dataDeSerializer) {
    return SectionResponse(
      title: json['title'],
      categories: json['categories'] is List
          ? (json['categories'] as List)
              .map<M>((e) => dataDeSerializer(e))
              .toList()
          : json['categories'],
    );
  }
}

class RestResponseSingle<M> {
  final bool success;
  final String message;
  final M data;

  RestResponseSingle({
    required this.success,
    required this.message,
    required this.data,
  });

  factory RestResponseSingle.fromJson(Map<String, dynamic> json,
      Function(Map<String, dynamic> json) dataDeSerializer) {
    return RestResponseSingle(
      success: json['success'],
      message: json['message'],
      data: json.containsKey('data') ? dataDeSerializer(json['data']) : {},
    );
  }
}
