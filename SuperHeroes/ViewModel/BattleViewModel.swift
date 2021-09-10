//
//  BattleViewModel.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 07.09.2021.
//

import Foundation

class BattleViewModel: ObservableObject {
    

    var state: State = .battle(status: "Battle begins!")
    
    @Published var opponent: Superhero
    @Published var you: Superhero
    
    @Published var opponentHealth: Int
    @Published var yourHealth: Int

    init(you: Superhero, opponent: Superhero){
        self.opponent = opponent
        self.you = you
        
        opponentHealth = Superhero.TOTAL_HEATH
        yourHealth = Superhero.TOTAL_HEATH

    }
    // TODO: I'm pretty sure Konstantin meant to send signals on the heath-state-changes for both opponents 🤔
    
    
     func doTurn() {
        // TODO: One of the opponents attack here...
        self.state = .battle(status: "\(Superhero.self) attacks!")
        
    }

    private func attack(yourTurn: Bool) -> String {
        var status = ""
        
        
        
        // TODO: it looks like a help method that was calculating the damage,
        //  the defence coefficient & if the hit was critical, dodged or doubled.
        
        return status
    }

    
    enum State {
        case battle(status: String)
        case result(won: Bool)
    }
}
