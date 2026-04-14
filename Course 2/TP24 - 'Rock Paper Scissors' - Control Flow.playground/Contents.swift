//  🏔️ MTECH Code Challenge TP24: "Rock Paper Scissors"
//  Concept: Practice writing functions with game logic

//  Instructions:
    //  Create a function that takes in two strings. The strings will be either "rock", "paper", or "scissors", with one input for each player respectively.
    //  Determine who wins, and return a string saying which player won.

//  Examples:
    //  Input: "scissors", "paper"
    //  Output: "Player 1 won!"

    //  Input: "scissors", "rock"
    //  Output: "Player 2 won!"
    
    //  Input: "paper", "paper"
    //  Output: "Draw!"

//  ⌺ Black Diamond Challenge:
    //  Expand your game to include Spock and Lizard as weapon options. You can view the matchups here: 🔗https://www.samkass.com/theories/RPSSL.html

import Foundation

func rockGame(_ player1: String, _ player2: String) -> String {
    let weapons = ["rock", "paper", "scissors"]
    guard weapons.contains(player1) && weapons.contains(player2) else { return "Bad Game Input" }
    
    let player1Wins = ["rock": "scissors", "scissors": "paper", "paper": "rock"]

    if player1 == player2 {
        return "Draw!"
    }
    if player1Wins[player1] == player2 {
        return "Player 1 won!"
    }
    return "Player 2 won!"
}

print(rockGame("scissors", "paper"))
print(rockGame("scissors", "rock"))
print(rockGame("paper", "paper"))


func rockGame2(_ player1: String, _ player2: String) -> String {
    let weapons = ["rock", "paper", "scissors", "spock", "lizard"]
    guard weapons.contains(player1) && weapons.contains(player2) else { return "Bad Game Input" }
    
    let player1Wins: [String: [String]] = ["rock": ["scissors", "lizard"],
                        "scissors": ["paper", "lizard"], "paper": ["rock", "spock"],
                        "spock": ["scissors", "rock"], "lizard": ["spock", "paper"]]

    if player1 == player2 {
        return "Draw!"
    }
    if player1Wins[player1]!.contains(player2) {
        return "Player 1 won!"
    }
    return "Player 2 won!"
}

print(rockGame2("scissors", "paper"))
print(rockGame2("scissors", "rock"))
print(rockGame2("paper", "paper"))
print(rockGame2("paper", "spock"))
print(rockGame2("spock", "rock"))
print(rockGame2("lizard", "spock"))
