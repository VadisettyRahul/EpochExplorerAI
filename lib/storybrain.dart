import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textgame/landingpage.dart';
import 'package:textgame/main.dart';
import 'package:textgame/story.dart';

class StoryBrain {
  int _sno = 0;
  // Define the stories based on your narrative
  List<Story> _stories = [
    Story(
      stitle: 'Start: Message from the Future.\nThe player receives a cryptic message from their future self, warning of an impending catastrophe that could destroy humanity.',
      c1: 'Trust the Future Self',
      c2: 'Ignore the Warning',
    ),
    Story(
      stitle: 'You decide to trust the message from your future self and begin investigating the warning.',
      c1: 'Investigate the Time Travel Device\'s Origins',
      c2: 'Investigate the Future Catastrophe Directly',
    ),
    Story(
      stitle: 'You decide to ignore the warning and proceed with your normal life, but you face the catastrophe unprepared.',
      c1: 'Restart',
      c2: '',
    ),
    Story(
      stitle: 'You investigate the time travel device and discover its origins. You find clues about how to avert the disaster.',
      c1: 'Alter the Timeline',
      c2: 'Do Not Alter the Timeline',
    ),
    Story(
      stitle: 'You investigate the future catastrophe directly and face potential danger. You uncover critical information.',
      c1: 'Alter the Timeline',
      c2: 'Do Not Alter the Timeline',
    ),
    Story(
      stitle: 'You alter the timeline, causing major changes in future events.',
      c1: 'Support the Science Group',
      c2: 'Support the Preservationists',
    ),
    Story(
      stitle: 'You do not alter the timeline. The future unfolds as expected but with unforeseen consequences.',
      c1: 'Support the Science Group',
      c2: 'Support the Preservationists',
    ),
    Story(
      stitle: 'You support the Science Group, aiming to save humanity through technology and time manipulation.',
      c1: 'Use Time Travel to Prevent Catastrophe',
      c2: 'Let Events Play Out Naturally',
    ),
    Story(
      stitle: 'You support the Preservationists, believing that interfering with the timeline will cause more harm than good.',
      c1: 'Use Time Travel to Prevent Catastrophe',
      c2: 'Let Events Play Out Naturally',
    ),
    Story(
      stitle: 'You use time travel to prevent the catastrophe. Humanity is saved, but you risk a time paradox.',
      c1: 'Restart',
      c2: '',
    ),
    Story(
      stitle: 'You let events play out naturally, accepting the unpredictable consequences of the natural timeline.',
      c1: 'Restart',
      c2: '',
    ),
    Story(
      stitle: 'The timeline is restored, but new challenges arise as a result of your decisions.',
      c1: 'Restart',
      c2: '',
    ),
  ];

  String getStory() {
    return _stories[_sno].storyTitle;
  }

  String getChoice1() {
    return _stories[_sno].choice1;
  }

  String getChoice2() {
    return _stories[_sno].choice2;
  }

  // Logic for navigating between stories based on choices
  void nextStory(BuildContext context,int choiceNo) {
    if (choiceNo == 1) {
      if (_sno == 0) {
        _sno = 1; // Trust the Future Self
      } else if (_sno == 1) {
        _sno = 3; // Investigate the Time Travel Device's Origins
      } else if (_sno == 3 || _sno == 4) {
        _sno = 5; // Alter the Timeline
      } else if (_sno == 5 || _sno == 6) {
        _sno = 7; // Support the Science Group
      } else if (_sno == 7 || _sno == 8) {
        _sno = 9; // Use Time Travel to Prevent Catastrophe
      } else if (_sno == 2 || _sno == 9 || _sno == 10 || _sno == 11) {
        reset(context); // Restart after an ending
      }
    } else if (choiceNo == 2) {
      if (_sno == 0) {
        _sno = 2; // Ignore the Warning
      } else if (_sno == 1) {
        _sno = 4; // Investigate the Future Catastrophe Directly
      } else if (_sno == 3 || _sno == 4) {
        _sno = 6; // Do Not Alter the Timeline
      } else if (_sno == 5 || _sno == 6) {
        _sno = 8; // Support the Preservationists
      } else if (_sno == 7 || _sno == 8) {
        _sno = 10; // Let Events Play Out Naturally
      } else if (_sno == 2 || _sno == 9 || _sno == 10 || _sno == 11) {
        reset(context);
      }
    }
  }

  void resetStory() {
    _sno = 0;
  }

  void reset(BuildContext context) {
    _sno = 0; // Reset the story index to the beginning
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LandingPage()),
          (Route<dynamic> route) => false,
    );
  }


  // Controls visibility of buttons for stories with one choice
  bool buttonShouldBeVisible() {
    if (_sno == 0 || _sno == 1 || _sno == 3 || _sno == 4 || _sno == 5 || _sno == 6 || _sno == 7 || _sno == 8) {
      return true;
    } else {
      return false;
    }
  }

}
