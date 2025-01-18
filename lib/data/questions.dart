import 'package:quiz_app/model/quiz_question.dart';

const questions = [
  QuizQuestion(
      'What is the difference between Stateful and Stateless widgets?', [
    "Stateful widgets can update the data they contain, while stateless widgets display static data.",
    "Stateful widgets cannot update the data they contain, while stateless widgets display static data.",
    "Stateless widgets can update the data they contain, while stateful widgets display static data.",
    "Stateful widgets can update the data they contain, while stateless widgets display static data.",
  ]),
  QuizQuestion('What does the "hot reload" feature do in Flutter?', [
    "Compiles code changes and restarts the application.",
    "Allows testing the application on a local device.",
    "Collects user feedback and sends it to the developer.",
    "Increases the speed of the application.",
  ]),
  QuizQuestion('What does the term "Widget tree" refer to?', [
    "The hierarchical structure of basic widgets used in Flutter.",
    "The style sheet that determines how widgets appear in the user interface.",
    "The layout that determines how widgets are positioned within the application.",
    "The framework in which Flutter operates.",
  ]),
  QuizQuestion('How does Flutter achieve cross-platform development?', [
    "By using a single codebase for both iOS and Android.",
    "By requiring separate codebases for each platform.",
    "By relying solely on platform-specific languages like Swift and Kotlin.",
    "By providing separate UI designs for each platform.",
  ]),
  QuizQuestion('What is a widget in Flutter?', [
    "An element of the user interface, ranging from buttons to layouts.",
    "A programming language used in Flutter development.",
    "A feature for debugging Flutter applications.",
    "A tool for managing application state.",
  ]),
];
