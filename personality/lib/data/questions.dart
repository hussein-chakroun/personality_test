import '../models/answers.dart';
import '../models/personality.dart';
import '../models/questions.dart';

final questions = [
  Question(
    text: 'How do you approach a difficult decision?',
    answers: [
      Answer(
        text: 'Analyze all options logically',
        personality: Personality.thinker,
      ),
      Answer(
        text: 'Go with what feels right emotionally',
        personality: Personality.feeler,
      ),
      Answer(
        text: 'Make a checklist and plan it out',
        personality: Personality.planner,
      ),
      Answer(
        text: 'Take a leap and deal with results later',
        personality: Personality.adventurer,
      ),
    ],
  ),
  Question(
    text: 'What excites you the most?',
    answers: [
      Answer(
        text: 'Solving complex problems',
        personality: Personality.thinker,
      ),
      Answer(
        text: 'Connecting deeply with others',
        personality: Personality.feeler,
      ),
      Answer(
        text: 'Creating a clear path to your goals',
        personality: Personality.planner,
      ),
      Answer(
        text: 'Exploring something new',
        personality: Personality.adventurer,
      ),
    ],
  ),
  Question(
    text: 'Which best describes your work style?',
    answers: [
      Answer(
        text: 'Detail-focused and logical',
        personality: Personality.thinker,
      ),
      Answer(
        text: 'People-centered and intuitive',
        personality: Personality.feeler,
      ),
      Answer(
        text: 'Organized and systematic',
        personality: Personality.planner,
      ),
      Answer(
        text: 'Flexible and spontaneous',
        personality: Personality.adventurer,
      ),
    ],
  ),
  Question(
    text: 'How do you recharge after a long day?',
    answers: [
      Answer(
        text: 'Quiet reflection or reading',
        personality: Personality.thinker,
      ),
      Answer(
        text: 'Spending time with close friends',
        personality: Personality.feeler,
      ),
      Answer(
        text: 'Planning tomorrow\'s tasks',
        personality: Personality.planner,
      ),
      Answer(
        text: 'Doing something active or exciting',
        personality: Personality.adventurer,
      ),
    ],
  ),
  Question(
    text: 'You\'re most comfortable when...',
    answers: [
      Answer(
        text: 'Things make logical sense',
        personality: Personality.thinker,
      ),
      Answer(
        text: 'Everyone is getting along',
        personality: Personality.feeler,
      ),
      Answer(
        text: 'There\'s a clear structure',
        personality: Personality.planner,
      ),
      Answer(
        text: 'You\'re free to try new things',
        personality: Personality.adventurer,
      ),
    ],
  ),
  Question(
    text: 'Your biggest strength is...',
    answers: [
      Answer(text: 'Thinking critically', personality: Personality.thinker),
      Answer(text: 'Empathizing with others', personality: Personality.feeler),
      Answer(text: 'Staying organized', personality: Personality.planner),
      Answer(text: 'Being adventurous', personality: Personality.adventurer),
    ],
  ),
];
