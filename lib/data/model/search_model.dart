
import 'package:frazex_intern_task/data/model/user_model.dart';

class SearchModel {
    SearchModel({
        required this.totalCount,
        required this.incompleteResults,
        required this.items,
    });

    int totalCount;
    bool incompleteResults;
    List<UserModel> items;

    factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        totalCount: json["total_count"],
        incompleteResults: json["incomplete_results"],
        items: List<UserModel>.from(json["items"].map((x) => UserModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "total_count": totalCount,
        "incomplete_results": incompleteResults,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

