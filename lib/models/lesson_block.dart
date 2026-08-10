enum LessonBlockTypes {
    heading,
    paragraph,
    example,
    warning,
    tips,
    summary,
    note,
}

class LessonBlock {
    final LessonBlockTypes type;
    final Object data;

    const LessonBlock ({
        required this.type,
        required this.data,
    });
}