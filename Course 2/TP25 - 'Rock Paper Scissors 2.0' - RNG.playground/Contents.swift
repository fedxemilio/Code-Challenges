//  🏔️ MTECH Code Challenge TP25: "Rock Paper Scissors 2.0"
//  Concept: Add custom randomization to a function. Black Diamond: Parse arrays.

//  Instructions:
    //  Create a function that takes in a string as input. This is the users move (either rock, paper, or scissors).
    //  Randomly decide what the computers choice is.
    //  Return a string which declares the winner.

//  Examples:
    //  Input: "rock"
    //  Output: "I chose paper. You lose!"
    //  Output: "I chose rock. Draw! Go again?"
    //  Output: "I chose scissors. I lose."

//  ⌺ Black Diamond Challenge:
    //  Create another function that instead accepts an array as input. If only one move is entered, generate a random one for the computer; if two are entered, compare them.
    //  If more than two moves are input, the winners are the players who voted for the most popular move.

import Foundation

enum Move: CaseIterable {
    case rock, paper, scissors
    
    var name: String {
        switch self {
        case .rock: "rock"
        case .scissors: "scissors"
        case .paper: "paper"
        }
    }
    
    func beats(_ other: Move) -> Bool {
        switch (self, other) {
        case (.rock, .scissors): true
        case (.scissors, .paper): true
        case (.paper, .rock): true
        default: false
        }
    }
}

func rockGame(_ move: Move) -> String {
    let player1 = move
    let player2 = Move.allCases.randomElement()!
    
    if player1 == player2 {
        return "I chose \(player2.name). Draw! Try again?"
    }
    if player1.beats(player2) {
        return "I chose \(player2.name). I lose."
    }
    return "I chose \(player2.name). You lose!"
}

print(rockGame(.paper))
print(rockGame(.rock))
print(rockGame(.scissors))


func rockGameMulti(_ moves: [Move]) -> String {
    if moves.count > 2 {
        var counts: [Move: Int] = [:]
        for move in moves {
            counts[move, default: 0] += 1
        }
        let mostCommon = counts.max(by: { $0.value < $1.value })!.key
        return "\(mostCommon.name) wins!"
    }
    
    var player1 = moves.first!
    var player2 = Move.allCases.randomElement()!
    
    if moves.count == 2 {
        player2 = moves[1]
    }

    if player1 == player2 {
        return "\(player1.name) vs \(player2.name). Draw!"
    }
    if player1.beats(player2) {
        return "\(player1.name) vs \(player2.name). Player 1 wins!"
    }
    return "\(player1.name) vs \(player2.name). Player 2 wins!"
}

let moveArray: [Move] = [.rock, .rock, .scissors, .scissors, .scissors, .paper]
let moveArray2: [Move] = [.rock]
let moveArray3: [Move] = [.rock, .rock]
let moveArray4: [Move] = [.rock, .paper]

print(rockGameMulti(moveArray))
print(rockGameMulti(moveArray2))
print(rockGameMulti(moveArray3))
print(rockGameMulti(moveArray4))
