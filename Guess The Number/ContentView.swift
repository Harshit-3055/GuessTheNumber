//
//  ContentView.swift
//  Guess The Number
//
//  Created by Harshit Agarwal on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var guess = ""
    @State private var showingAlert = false
    @State private var statusOfGuess = ""
    @State private var randomGuess = 0
    @State private var score = 1000
    @State private var noOfTriesLeft = 10
    @State private var gameOverAlert = false
    @AppStorage("highScore") private var highScore = 0
    @FocusState private var isFocused: Bool
    @State private var difficulty = "Easy"
    @State private var endNum = 50
    @State private var hint = ""
    let difficulties = ["Easy", "Medium", "Hard"]
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section("Live Stats:") {
                        Text("Score - \(score)")
                        Text("Number of tries left - \(noOfTriesLeft)")
                    }
                    Section("Choose Difficulty") {
                        Picker(" ", selection: $difficulty) {
                            ForEach(difficulties, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        .onChange(of: difficulty){
                            endNumDecider()
                            generateRandom()
                        }
                    }
                    Section("Guess any number between 1 to \(endNum):") {
                        TextField("Enter your guess here", text: $guess)
                            .keyboardType(.decimalPad)
                            .focused($isFocused)
                            .toolbar {
                                ToolbarItemGroup(placement: .keyboard) {
                                    Spacer()
                                    Button("Submit") {
                                        checkGuess()
                                    }
                                    
                                }
                            }
                    }
                }
            }
            .navigationTitle("Guess The Number")
            .scrollDismissesKeyboard(.interactively)
            .toolbar {
                Text("High Score = \(highScore)")
            }
            .alert(statusOfGuess, isPresented: $showingAlert) {
                Button("Guess again", role: .cancel){}
                Button("New Game", role: .destructive) {
                    generateRandom()
                }
            } message: {
                Text("Hint - \(hint)")
            }
            .alert(statusOfGuess, isPresented: $gameOverAlert) {
                Button("New Game", role: .cancel) {
                    generateRandom()
                }
            } message: {
                Text("The number was \(randomGuess). Your final Score is \(score)")
            }
        }
        .onAppear(perform: generateRandom)
        .gesture(
            TapGesture().onEnded {
                isFocused = false
        })
    }
    
    func endNumDecider() {
        if difficulty == "Easy" {
            endNum = 50
        }else if difficulty == "Medium" {
            endNum = 100
        } else {
            endNum = 200
        }
    }
    
    func hints() {
        guard let guessInt = Int(guess) else {
            hint = "Invalid input. Please enter a number."
            return
        }
        
        let difference = abs(randomGuess - guessInt)
        var veryFarThreshold = 25
        var farThreshold = 10
        var nearThreshold = 5
        var veryNearThreshold = 2
        
        if difficulty == "Medium" {
            veryFarThreshold = 50
            farThreshold = 20
            nearThreshold = 10
            veryNearThreshold = 5
        } else if difficulty == "Hard" {
            veryFarThreshold = 100
            farThreshold = 50
            nearThreshold = 20
            veryNearThreshold = 10
        }
        
        if difference >= veryFarThreshold {
            hint = "You're very Far"
        } else if difference >= farThreshold {
            hint = "You're Far"
        } else if difference >= nearThreshold {
            hint = "You're Near"
        } else if difference >= veryNearThreshold {
            hint = "You're very near"
        } else {
            hint = "Almosttt guessed it!!"
        }
    }


    
   func generateRandom() {
       guess = ""
       randomGuess = Int.random(in: 1..<endNum)
       score = 1000
       noOfTriesLeft = 10
    }
    
    func checkGuess() {
        guard Int(guess) != nil && Int(guess)! <= endNum else {
            statusOfGuess = "Invalid Input"
            hint = "Choose only the numbers between 1 to \(endNum)."
            showingAlert = true
            return
        }
        isFocused = true
        score -= 100
        noOfTriesLeft -= 1
        guard noOfTriesLeft > 0 else {
            statusOfGuess = "Game Over!!!"
            gameOverAlert = true
            return
        }
        if randomGuess > Int(guess)! {
            statusOfGuess = "Guess Higherr!!!"
            showingAlert = true
        } else if randomGuess < Int(guess)! {
            statusOfGuess = "Guess Lowerrr!!"
            showingAlert = true
        } else {
            statusOfGuess = "Correct guess!! Huraah!"
            gameOverAlert = true
            if highScore < score {
                highScore = score
            }
        }
        hints()
    }
}

#Preview {
    ContentView()
}
