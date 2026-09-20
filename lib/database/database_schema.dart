class DatabaseSchema {
  static const createTopicsTable = '''
    CREATE TABLE topics(
      id INTEGER PRIMARY KEY,
      title TEXT NOT NULL,
      image TEXT NOT NULL
    )
  ''';

  static const createSubTopicsTable = '''
    CREATE TABLE sub_topics(
      id INTEGER PRIMARY KEY,
      topic_id INTEGER NOT NULL,
      sub_title TEXT NOT NULL,

      FOREIGN KEY (topic_id) REFERENCES topics(id)
    )
  ''';

  static const createLessonsTable = '''
    CREATE TABLE lessons(
      id INTEGER PRIMARY KEY,
      sub_topic_id INTEGER PRIMARY KEY,
      block_type TEXT NOT NULL,
      position INTEGER NOT NULL,

      FOREIGN KEY (sub_topic_id) REFERENCES sub_topics(id)
    )
  ''';

  static const createHeadingBlocksTable = '''
    CREATE TABLE heading_blocks(
      block_id INTEGER  PRIMARY KEY,
      heading TEXT NOT NULL,

      FOREIGN KEY (block_id) REFERENCES lessons(id)
    )
  ''';

  static const createParagraphBlocKsTable = '''
    CREATE TABLE paragraph_blocks(
      id INTEGER PRIMARY KEY
    )
  ''';

  static const createParagraphBlockLinksTable = '''
    CREATE TABLE paragraph_block_links(
      block_id INTEGER PRIMARY KEY,
      paragraph_id INTEGER NOT NULL,

      FOREIGN KEY (block_id) REFERENCES lessons(id),

      FOREIGN KEY (paragraph_id) REFERENCES paragraph_blocks(id)
    )
  ''';

  static const createTextPartsTable = '''
    CREATE TABLE text_parts(
      paragraph_id INTEGER PRIMARY KEY,
      text TEXT NOT NULL,
      is_math INTEGER NOT NULL DEFAULT 0,
      is_image INTEGER NOT NULL DEFAULT 0,
      style TEXT,
      position INTEGER NOT NULL,

      FOREIGN KEY (paragraph_id) REFERENCES paragraph_blocks(id)
    )
  ''';

  static const createExampleBlocksTable = '''
    CREATE TABLE example_blocks(
      block_id INTEGER PRIMARY KEY,
      title TEXT NOT NULL,
      paragraph_question INTEGER NOT NULL,
      paragraph_solution INTEGER NOT NULL,
      paragraph_answer INTEGER NOT NULL,

      FOREIGN KEY (block_id) REFERENCES lessons(id),

      FOREIGN KEY (paragraph_question) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (paragraph_solution) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (paragraph_answer) REFERENCES paragraph_blocks(id)
    )
  ''';

  static const createMessageBlocksTable = '''
    CREATE TABLE message_blocks(
      block_id INTEGER PRIMARY KEY,
      type TEXT NOT NULL,
      title TEXT NOT NULL,
      paragraph_context INTEGER NOT NULL,

      FOREIGN KEY (block_id) REFERENCES lessons(id),

      FOREIGN KEY (paragraph_context) REFERENCES paragraph_blocks(id)
    )
  ''';

  static const createQuizsTable = '''
    CREATE TABLE quizs(
      id INTEGER PRIMARY KEY,
      sub_topic_id INTEGER NOT NULL,
      question INTEGER NOT NULL,
      option_0 INTEGER NOT NULL,
      option_1 INTEGER NOT NULL,
      option_2 INTEGER NOT NULL,
      option_3 INTEGER NOT NULL,
      solution INTEGER NOT NULL,
      correct_answer INTEGER NOT NULL,

      FOREIGN KEY (sub_topic_id) REFERENCES sub_topics(id)

      FOREIGN KEY (question) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (option_0) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (option_1) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (option_2) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (option_3) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (solution) REFERENCES paragraph_blocks(id),

      FOREIGN KEY (correct_answer) REFERENCES paragraph_blocks(id)
    )
  ''';

}