//
//  BattleViewModel.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 07.09.2021.
//

import Foundation

struct BattleViewModel {
    
    var state: State = .battle(status: "Battle begins!")

    // TODO: I'm pretty sure Konstantin meant to send signals on the heath-state-changes for both opponents 🤔
    
    
    func doTurn() {
        // TODO: One of the opponents attack here...
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
