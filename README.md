<img src="./assets/timetraveller.jpg">

# 🚀 The Time Traveler's Dilemma

"The Time Traveler's Dilemma" is an AI-powered text-based adventure game where players navigate time, interact with their past selves, and make choices that alter the timeline. Players face five key decision points that branch into multiple outcomes, leading to different endings. This game utilizes AI to generate dynamic storylines and adaptive character responses.

## ✨ Features

- 🕒 **Time Travel Mechanics:** Travel through different periods and communicate with your past selves to alter the future.
- 🦋 **Butterfly Effect:** Every choice impacts the game world, with small changes causing significant consequences.
- 🤖 **AI-Driven Story Generation:** The game adapts based on player decisions, generating new dialogues and plot twists.
- 🎨 **Retro-inspired ASCII Art:** Optional retro visuals add nostalgia to the gameplay.
- 🎶 **AI-Generated Music:** The dynamic AI soundtrack adapts based on the player's actions and game progress.
- 🎮 **Branching Storyline with Multiple Endings:** Each playthrough offers unique outcomes based on your decisions.

## 🛠️ How It Works

- **Story Graph:** The game uses a story graph to manage narrative branches, with nodes representing events and edges representing transitions.
- **AI-Powered Dynamic Responses:** The AI adjusts NPC responses and plot elements depending on the player's previous actions.
- **Natural Language Processing (NLP):** The game uses AI to process text-based commands, making the interaction more natural.
- **Dynamic Difficulty Adjustment:** The AI adjusts the difficulty level based on player performance.

## 🧩 Installation

Watch the [YouTube setup video](#) for a detailed explanation.

### 📋 Prerequisites

- Dart SDK version 2.15.0 or higher installed on your system.
- A Google Cloud or other NLP API key for natural language processing capabilities.

### 🔐 Set Up AI Model APIs

#### **Dart Packages:**

- **NLP for Dart:** No standard NLP library exists for Dart like `nltk`, but you can use REST APIs such as Google's NLP API for processing.
- **Machine Learning:** Use TensorFlow via a Dart binding or connect to a TensorFlow server through REST APIs.

#### **Google Cloud NLP API:**

1. Sign up at Google Cloud and obtain your API key.
2. Replace `"your_google_nlp_api_key_here"` in the script with your actual API key.

### 🔧 Configuration

1. Open the main Dart file (e.g., `main.dart`) in your preferred editor.
2. Update the API keys and endpoints as necessary for NLP services.
3. Ensure your resources (like audio files for background music) are correctly referenced in the `assets` folder.

## 📦 Dependencies

The game requires the following Dart packages:

- **http:** For making REST API calls to AI models.
- **flutter:** For GUI and visual elements (if running with Flutter for cross-platform capabilities).
- **flutter_tts:** For Text-to-Speech, if needed for character dialogue.
- **path_provider:** For managing file paths and resources.
- **audiofileplayer:** For AI-generated background music integration.

## 📄 Requirements File

In **Dart**, the equivalent of `requirements.txt` is the **pubspec.yaml** file:

```yaml
name: time_travelers_dilemma
description: An AI-powered text-based adventure game with time travel mechanics.

environment:
  sdk: ">=2.15.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.4
  path_provider: ^2.0.11
  flutter_tts: ^3.3.2
  audiofileplayer: ^1.0.0
```

### Install the dependencies:

```bash
flutter pub get
```

## ▶️ Running the Application

### Method 1: Using Flutter

1. Clone the repository:
    ```bash
    git clone https://github.com/your_repo/Time_Travelers_Dilemma.git
    cd Time_Travelers_Dilemma
    ```

2. Run the game on an emulator or connected device:
    ```bash
    flutter run
    ```

### Method 2: Standalone Dart Console Application

1. Ensure Dart SDK is installed and configured.
2. Run the application:
    ```bash
    dart run main.dart
    ```

## 🤝 Contributing

- Rahul Vadisetty and Anand Polamarasetti: Game design, AI integration, and  storyline  development.
- Contributors: 

- Fork the repository.
- Create your feature branch (`git checkout -b feature/YourFeature`).
- Commit your changes (`git commit -m 'Add some feature'`).
- Push to the branch (`git push origin feature/YourFeature`).
- Open a pull request.

## 💼 Applications

- **AI Competitions:** This project is ideal for AI game design competitions.
- **Educational Tool:** Players can learn about time travel concepts and the butterfly effect through gameplay.
- **Entertainment:** A fun and engaging experience for gamers who enjoy story-driven adventures.

## 📝 Conclusion

"The Time Traveler's Dilemma" is an innovative text-based adventure game that combines AI-driven story generation with time travel mechanics. The game's multiple endings, adaptive character responses, and dynamic difficulty adjustment make it a unique and immersive experience.


#### License:
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.