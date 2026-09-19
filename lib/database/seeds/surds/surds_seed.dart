import 'package:sqflite/sqflite.dart';
import '../../helpers/topic_helper.dart';

class SurdsSeed {
  static Future<void> seed(
    Database db
  ) async {
    final topicId = await TopicHelper.appendTopic(
      db,
      title: 'Surds',
      image: 'surds_icon.png',
    );


  }
}