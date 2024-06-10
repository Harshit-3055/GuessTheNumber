🎯 **Guess The Number ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.001.png)**

📝 **Introduction ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.002.png)**

Welcome to **Guess The Number**, a simple yet engaging game developed using SwiftUI. This project was created to enhance my understanding and skills in SwiftUI, and it demonstrates various fundamental and advanced concepts. The game is designed to challenge the player to guess a randomly generated number within a specific range, with different levels of difficulty to make it more interesting. 

✨ **Features ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.003.png)**

📊 **Live Stats ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.004.png)**

- **Score**: Tracks the player's score, starting from 1000 and decreasing with each incorrect guess. 
- **Number of Tries Left**: Players have 10 tries to guess the correct number. 

🎚 **Difficulty Levels ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.005.png)**

- **Easy**: Guess a number between 1 and 50. 
- **Medium**: Guess a number between 1 and 100. 
- **Hard**: Guess a number between 1 and 200. 
- The difficulty can be changed using a segmented picker. 

🎯 **User Input ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.006.png)**

- **Text Field**: Players enter their guess in a text field with a decimal pad keyboard. 
- **Submit Button**: A toolbar button is available to submit the guess. 

💡 **Feedback and Hints ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.007.png)**

- **Hints**: Provides hints to the player about how close they are to the correct number. 
- **Alerts**: Displays alerts with hints after each guess and a special alert when the game is over. 

🏆 **High Score ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.008.png)**

- **High Score Tracking**: The app tracks and displays the highest score achieved by the player. 

⏳ **Game Over ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.009.png)**

- **Game Over Condition**: The game ends when the player either guesses the correct number or exhausts all attempts. 

📉 **Keyboard Dismissal ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.010.png)**

- **Interactive Keyboard Dismissal**: The keyboard can be dismissed interactively by tapping outside the text field. 

📚 **Code Explanation ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.011.png)**

The main components of the code include: 

1. 🗃 **State Variables ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.012.png)**
- **@State Variables**: Used to manage the state of the game (e.g., guess, showingAlert, statusOfGuess, randomGuess, score, noOfTriesLeft, gameOverAlert, difficulty, endNum, hint). 
- **@AppStorage**: Used to store the high score persistently. 
- **@FocusState**: Manages the focus state of the text field. 
2. 🖼 **User Interface ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.013.png)**
- **NavigationStack**: Manages the navigation and layout. 
- **Form**: Organizes the game interface into sections. 
- **Picker**: Allows the player to choose the difficulty level. 
- **TextField**: Enables the player to enter their guess. 
- **Toolbar**: Adds a toolbar with a submit button for the text field. 
3. 🎲 **Game Logic ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.014.png)**
- **endNumDecider()**: Determines the range of numbers based on the selected difficulty. 
- **hints()**: Provides hints based on the difference between the guessed number and the correct number. 
- **generateRandom()**: Generates a new random number and resets the game state. 
- **checkGuess()**: Checks the player's guess and updates the game state accordingly. 

🔮 **Future Features ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.015.png)**

Here are some features I plan to add in the future to enhance the game: 

1. 🎨 **Animations**: Add animations for correct and incorrect guesses to make the game more interactive and fun. ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.016.png)
1. 🔊 **Sound Effects**: Integrate sound effects for different actions like correct guess, incorrect guess, and game over. ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.017.png)
1. 🏅 **Leaderboard**: Implement a leaderboard to display the top scores from players. ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.018.png)
1. 🎭 **Themes**: Add different themes or skins that players can choose from. ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.019.png)
1. 🤝 **Multiplayer Mode**: Introduce a multiplayer mode where players can compete against each other. ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.020.png)

🧠 **Learning Experience ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.021.png)**

Working on this project has significantly improved my understanding of SwiftUI. I learned how to: 

- Manage state using @State and @AppStorage. 
- Use @FocusState to handle keyboard interactions. 
- Create dynamic interfaces using Form, Picker, and TextField. 
- Implement navigation and layout management with NavigationStack. 
- Display alerts and handle user interactions. 
- Apply basic game logic and state management. 
- Enhance the user experience with interactive elements and feedback mechanisms. 

🎓 **Conclusion ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.022.png)**

**Guess The Number** is not just a game, but a learning project that helped me delve deeper into SwiftUI. I look forward to adding more features and making the game even more enjoyable. Feel free to contribute or suggest new features! 

🛠 **Installation ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.023.png)**

To run this project, you need Xcode installed on your Mac. Follow these steps: 

1. Clone the repository: 

   sh 

   Copy code 

   git clone https://github.com/yourusername/guess-the-number.git 

2. Open the project in Xcode: 

   sh 

   Copy code 

   cd guess-the-number 

   open GuessTheNumber.xcodeproj 

3. Build and run the project using the Xcode toolbar or by pressing Cmd + R. 

🤝 **Contribution ![](Aspose.Words.6c060a80-784c-4b06-9145-d16b8d578420.024.png)**

If you have any suggestions or improvements, feel free to create an issue or submit a pull request. Contributions are always welcome! 
