import 'package:sqflite/sqflite.dart';
import '../../helpers/topic_helper.dart';
import 'sub_titles/introduction_of_surds_seed.dart';

class SurdsSeed {
  static Future<void> seed(
    Database db
  ) async {
    final topicId = await TopicHelper.appendTopic(
      db,
      title: 'Surds',
      imagePath: 'assets/images/surds_icon.png',
    );

    await IntroductionOfSurdsSeed.seed(
      db,
      topicId: topicId
    );
  }
}