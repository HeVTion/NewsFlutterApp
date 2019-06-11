import 'package:flutter_app/model/book_model_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "BookModelEntity") {
      return BookModelEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}